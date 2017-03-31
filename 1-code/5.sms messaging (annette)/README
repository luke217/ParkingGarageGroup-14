new.php (SMS texting program) 2/38/17

General usage notes:
--------------------

To run this function properly, you must first have wamp, 
mamp, xammp or other similar program.  

Then, you must configure these applications to send mail in 
order to use the "mail()" function included in php.  The 
following tutorial was used to do this: 

http://yogeshchaugule.com/blog/2013/configure-sendmail-wamp

First you must download 'sendmail', and save it in wamp file
(or other server you have downloaded).  
Then configure the files included in sendmail to work for 
your email account.  For instance, to send from another email 
client other than gmail, you will have to know the smtp server 
for this client.  For gmail, edit the following lines: 

Line no. 14 | smtp_server=smtp.gmail.com # if gmail, if configured
 with stunnel use localhost
Link no. 18 | smtp_port=465 # if gmail, if configured with stunnel 
 use 25
Link no. 27 | smtp_ssl=auto # if gmail, if configured with stunnel
 use none
Link no. 46 | auth_username=youremail@gmail.com
Link no. 47 | auth_password=yourpassword

I've included my sendmail.ini for reference, as other lines may need
to be edited too.  

Next is configuring the php.ini file.  This is located in the
wamp menu >php > php.ini or by opening the wamp folder and following 
the same path.  

Set smtp_port to 465, and set sendmail_path to
"C:\wamp\sendmail.exe -t".  

Finally, save all edited files and close them.  You will now be able 
to run the provided php code. 


Annette Brucato
Software Engineering, Spring 2017, Parking Garage Automation
