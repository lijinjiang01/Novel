jQuery(function ($) {
    var colorTheme = {
        COOKIE_THEME: 'color-theme',
        $colorItems: $('.color-themes > li'),
        colors: {
            default: 'main-default',
            cyan: 'main-cyan',
            green: 'main-green',
            red: 'main-red',
            yellow: 'main-yellow',
            blue: 'main-blue'
        },
        init: function(){
            var self = this;
            self.curCookieTheme();
            self.$colorItems.on('click', function () {
                self.$colorItems.removeClass('is-active');
                $(this).addClass('is-active');
                var curElement = $(this).data('color');
                self.setTheme(curElement); //replacement of color elements
                self.replaceMarkerForMaps(curElement);
                self.replaceImages(curElement);//replacement pictures for style
            });

            $('[data-reset]').on('resetColors', function () {
                self.setTheme('default');
                self.replaceMarkerForMaps('default');
                self.replaceImages('default');
                setCookie(self.COOKIE_THEME, 'default');
                self.setActiveItem('default');
            });
        },
        curCookieTheme: function(){
            var curCookieTheme = getCookie(this.COOKIE_THEME);
            if (curCookieTheme) {
                this.preloaderV1(curCookieTheme);
                this.setTheme(curCookieTheme);
                this.replaceMarkerForMaps(curCookieTheme);
                this.replaceImages(curCookieTheme);
                this.setActiveItem(curCookieTheme);
            }
            else {
                this.pageShow();
                this.preloaderV1('default');
            }
        },
        preloaderV1: function(curTh){
            var $colorThemePreloader = $('.color-theme-preloader');
            if ($colorThemePreloader.length) {  //replace img for logo(preload v1)
                var newSrc = this.replaceSrcForImg(curTh, $colorThemePreloader.attr('src'));
                var tempImg = new Image();
                tempImg.src = newSrc;
                tempImg.onload = function () {
                    $colorThemePreloader.attr('src', newSrc).css('visibility', 'visible');
                };
            }
        },
        setActiveItem: function(theme){
            this.$colorItems.removeClass('is-active');
            this.$colorItems.each(function () {
                if ($(this).data('color') === theme) {
                    $(this).addClass('is-active');
                }
            });
        },
        setTheme: function(theme){
            var $linkTheme = $('link[data-themecolor]'),
                curTheme = $linkTheme.data('themecolor'),
                attrEl = $linkTheme.attr('href');
            if (curTheme === theme) {
                return;
            }
            attrEl = attrEl.replace(this.colors[curTheme] + '.css', this.colors[theme] + '.css');
            $linkTheme.data('themecolor', theme);
            $linkTheme.attr('href', attrEl);
            if (getCookie(this.COOKIE_THEME) !== theme) {
                setCookie(this.COOKIE_THEME, theme);
            }
        },
        replaceSrcForImg: function(theme, src){
            var curSrc = src.split('.');
            var srcUpd = curSrc[curSrc.length - 2].split('-');
            if (srcUpd[srcUpd.length - 1] === theme) {
                return src;
            }
            srcUpd[srcUpd.length - 1] = theme;
            srcUpd = srcUpd.join('-');
            curSrc[curSrc.length - 2] = srcUpd;
            return curSrc.join('.');
        },
        replaceImages: function(theme){
            var self = this;
            var $imgTheme = $('.color-theme'),
                imgThemeNum = $imgTheme.length,
                countImg = 0;
            $imgTheme.each(function () {
                var img = new Image();
                var newSrc = self.replaceSrcForImg(theme, $(this).attr('src'));
                if (!newSrc) {
                    countImg++;
                    return;
                }
                $(this).attr('src', newSrc);
                img.src = newSrc;
                img.onload = function () {
                    countImg++;
                    if (countImg === imgThemeNum) {
                        self.pageShow();
                    }
                };
            });
        },
        replaceMarkerForMaps: function(theme){
            var self = this;
            var $map = $('.b-google-map.map-theme');
            if ($map.length > 0) {

                var newSrc = self.replaceSrcForImg(theme, $('.marker-template').attr('src'));
                if (!newSrc) {
                    return;
                }
                $('.marker-template').attr('src', newSrc);
                $map.trigger('replace_marker');
            }
            $('.color-theme').each(function () {
                var curSrc = $(this).attr('src').split('.');
                var srcUpd = curSrc[curSrc.length - 2].split('-');
                var srcNewTheme;
                if (srcUpd[srcUpd.length - 1] === theme) {
                    return;
                }
                srcUpd[srcUpd.length - 1] = theme;
                srcUpd = srcUpd.join('-');
                curSrc[curSrc.length - 2] = srcUpd;
                srcNewTheme = curSrc.join('.');
                $(this).attr('src', srcNewTheme);
            });
        },
        pageShow: function(){

            setTimeout(function () {
                $('.mask-l').animate({'opacity': 0}, 800, function () {
                    $(this).css('display', 'none');
                });
            }, 400);
        }

    };

    colorTheme.init();
});