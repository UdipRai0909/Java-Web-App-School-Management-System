
#  Java Web Application - School Management System

## Features

1. Bootstrap 4.0, jQuery 3.4, findAndReplaceDom library

1. Role-based Login and Register Forms with jsp validation

1. Mark.js for dynamic searching

1. CRUD operations throughtout the site

1. Unique email and Unique contact of students, teachers or admins

1. Users with profile pictures which can be modified as per need

1. Improved use of SQL queries as compared to previous projects

## Database used:

1. MySQL

## Language used:

1. JAVA

1. JSP and JSTL with html

## Programs used

1. XAMPP 

1. MySQL Workbench 
(optional but better for coding experience) 

1. Browser (Chrome)

1. Eclipse
  1. [Required Jar Files](https://drive.google.com/drive/folders/1sE8euWJz6PLPXxhfulPdSVAHMNTCaGGe?usp=sharing)

## Video Demo

[Google drive link](https://drive.google.com/file/d/1Vhx8oF1iCdSy2QAD4Y8gw6cXofBLnwVe/view?usp=sharing)

## Steps to reproduce

1. Go to the github link -> Code -> download ZIP.

1. Go to the download directory. 
   Create a new folder called "Workspace".
   Open ZIP and extract the folder to the workspace.

1. Open Eclipse -> Browse -> Workspace you created 

1. Go to File -> Import -> General -> Existing Projects into 
   Workspace. Select the folder you extracted in workspace.
   
1. Go to Server -> click the link to create a new server.
   Select Apache and choose an Apache server. Click Next.
   Browse for the folder containing the Apache server. 
   Go inside the folder or select the folder to continue.
   [Download Apache Tomcat 9](https://drive.google.com/drive/folders/1DeagNJaFVPz0sBEvb7qwP_6VcnRz1Fcy?usp=sharing) 
   
1. Go to Window -> Preferences -> Validation
   Select Classpath Dependency Validator
   Unmark the Buld checkbox. Click on "Apply and Close".

1. There should be no errors at this point in **Markers** tab.

1. Go to src -> utility -> query.txt 
   Copy all inside the .txt file

1. Open XAMPP control panel. Start Apache and MySQL.
   Memorize the port on the right on Apache. (808 here)

1. Head over to your browser and go to this link below.
   **localhost:808/phpmyadmin**
   Run the query in SQL by holding Ctrl + Enter.
   
1. Verify that the table is created by reloading the site.
   Go over to admins table and take note of the email and password of the superadmin.
   Default email: admin@gmail.com
   Default pass: adminpass

1. Now go back to the project.
   Navigate to Windows -> Web Browser -> Chrome.
   Right click on project folder -> Run as -> Run on Server.
   
1. Check out the site. 
   Login as superadmin to make changes to everything in the site. 
   
1. Login as admin or Register as admin.
   He/She can modify all except the admins table. 
   He/She cannot view email/password of admins.
   
1. Refresh the project folder and reload the site to make changes to images uploaded.

1. Add or modify data on the navbar links.
   
1. Login as student or register as student.  
   They can't modify anthing except their user details.

1. Login as teacher or register as teacher. 
   They perform partial operations.
   They can't modify **teachers** and **admins** tables.

  

## Future Improvements

**_Date: Mar 16, 2021_**

1.  I dont like the Search engine of this site. Well the main focus was MVC pattern in Java JSP JSTL so I         didnt think much of it  earlier.

1.  The MVC pattern has been followed in a neat fashion but still there are many places where the codes can       be written more cleaner and up to viewerr's or reader's taste. That being said, I have used not-so           intelligent variable names which are not so easy to take in at first glance.

1.  I have avoided hard coding in places which can be done. There are still some hard coded parts in the jsp     pages which might need some updates in     the future. I have used JSTL tags and properties but i havent     really used JSTL functions to be more precise.

1.  The uploaded images do not work unless the project folder is refreshed or the server is restarted. I will     need a dynamic way to change how the uploaded images behave. One more thing is that when i need to edit a     user, I want the image file to remain the same if i don't make any         changes to its image.

1.  I have used proper JSP validations but they can be made much better. Instead of a nested if-else-if, i       need to find a more proper way to validate the html forms. Moreover, I missed javascript validation in       this project. I will be sure to do that at least when I have free time.
