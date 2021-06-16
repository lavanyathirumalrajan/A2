# A2
Secure the drug components using Naive Bayes and SVM
Download the source code.
Requirements:
Windows Xp and above
JDK 1.7 and above
Tomcat 6
Tomcat 7
My Sql5.0
iOS 2.5 
XAMPP
We have hosted our application in AWS in the following Ip address.
http://54.159.26.93:9999/
Step1 : Click the above link.
Step 2: Select the Tomcat manager option on your left side.
Step 3: Select Identity based option
Step 4: Now the home page of our project will be displayed. Click the Admin button which will be on the top right corner.
Step 5: Type the Admin credentials.
Username: Admin
Password: Admin
Step 6: Now the Admin home page will be displayed. Provide the server configuration details. 
Select number of servers to be used (which we have used is 2) 
Server 1: localhost:8888
Server 2: localhost:9999
And click ok
Step 7: Set the Audit time (eg: 2 min) A toast “Audit time set” will be displayed.
Step 8: Now Click Home button on the top right corner.
Step 9: Click on new user and provide the requested details and click on submit.
Step 10: A toast “Registration successful” will be displayed.
Step 11: Click on Log in.
Step 12: Give the user credentials say username and password and click submit.
Step 13: File upload screen will get open.
Step 14: Click on choose and upload the file which you want to upload.
Step 15: Click on Distribute to cloud storage.
Step 16: If you want to see the distribution of the hash tree, click on Build Ternary Hash tree option.
Step 17: If you want to see FATFS (File Allocation Table File System) click on FATFS on the top right corner. There you can see the block distribution details.
Step 18: If you want to see the function of recovery of the corrupted file. Then go to Attacker on the top right corner. Select the server and block number randomly so that the encrypted data of the respected block will be displayed. Now do some changes or delete the encrypted part of data. Click the save option.
Step 19: Now try to download the same file which you have corrupted using attacker.
Step 20: Now an error link stating “File is corrupted. Inform to verifier” will be displayed.
Step 21: Now click on that error link so that the corrupted file will be recovered and redistributed in the server.
Step 22: Now a success link will be displayed stating “File is recovered. Click to download” will be displayed. You can click on that link and download the recovered file. Now Clock on the home button where you can see an extra button called “Public Audit” Clicking on that you can verify the auditing done on the file for every time interval which we have set earlier. 







