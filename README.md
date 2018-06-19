# Dynamic Web Application with SpringMVC&Hibernate

You can find the video tutorial at https://www.youtube.com/watch?v=rgiO_nwGDlo&t=0s.

## Basic Project Catalogue
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/structure.png)


## To run the application
My enviroment: Eclipse Java EE IDE for Web Developers + IDK1.8 + Tomcat8.0 + MySQL
1. Database Configuration
* Download the MySQLWorkBench to manage the database visibly.
* Add a new MySQL connections and remember the username and password you created.
* Create a new schema named "eshop".
* Copy and paste the code in the attached file named "eshop.sql".

2.spring.xml Configuration
* You can find it under the WebContent/WEB-INF/lib/spring.xml.
* You can configure your datasource here:
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/configure.png)

## To test the application
Visit the home page at: http://localhost:8080/EShop/.

## Functions
* User register and login with validation.
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/register.png)
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/login.png)

* User inforamation context validation using Jquery.
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/validation.png)

* User password protect (MD5 Message-Digest Algorithm).
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/md5.png)

* Add items to cart and checkout.
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/cart.png)

* View order history.
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/history.png)

* Admin login to manage items.
![image](https://github.com/selenp/EShop/blob/master/WebContent/images/add.png)
