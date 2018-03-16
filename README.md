# 项目简介

一款基于JavaEE搭建的小说平台

# 使用技术

IOC容器：Spring

Web框架：Struts2

ORM框架：Hibernate

数据库：Mysql

前端框架：Bootstrap，Jsp

# 项目相关

## 1.运行环境和所需工具

编译器：myeclipse

数据库：Mysql

JDK版本：jdk1.8

Tomcat版本：Tomcat8.x

## 2.开始项目

1.在你的Mysql控制面板中，导入运行我提供的 wy.sql 文件

2.在 myeclipse 创建数据链接，测试是否成功

3.使用 myeclipse 导入项目，进入 src/hibernate.cfg.xml 修改 JDBC 配置文件,选择刚刚创建出来的数据库链接

4.配置我们的 Tomcat ，然后把项目添加到 Tomcat 中

5.运行，输入 http://localhost:8080/WY Tomcat配置其他端口，修改8080便可

 ![](https://github.com/1123GY/Novel/blob/master/Image/Image1.jpg)
 
 # 模块介绍
 
 ## 1.字数榜、推荐榜
 
按照字数和推荐排行，用 Java 实现分页，每页显示 8 条数据。

![](https://github.com/1123GY/Novel/blob/master/Image/Image2.jpg)

 ## 2.大神榜
 
按照收录作者书籍数量排序，用 Java 实现分页，每页显示 8 条数据。

![](https://github.com/1123GY/Novel/blob/master/Image/Image3.jpg)

 ## 3.书籍信息页
 
显示书籍的具体信息，还有其章节目录。

![](https://github.com/1123GY/Novel/blob/master/Image/Image4.jpg)


 ## 4.小说阅读
 
显示书籍章节具体内容。

![](https://github.com/1123GY/Novel/blob/master/Image/Image5.jpg)


 ## 5.作者信息
 
显示作者的具体信息，及其所录入书籍。

![](https://github.com/1123GY/Novel/blob/master/Image/Image6.jpg)

 ## 6.搜索功能
 
 按照所输入细信息进行搜索，显示全部符合书名和作者名的书籍列表
