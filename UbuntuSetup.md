# Ubuntu Setup

The video demonstrating these steps is at 
https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1191e974-225b-4358-a5ff-a9ed013548bc

You can get an independent account via https://aws.amazon.com/education/awseducate/
OR if you would like an account as part of the PisanAWSBasic classroom to
have your own AWS instance, email me at pisan@uw.edu (UW Students
only. Invitations will be to your official UW email address)

1. Click on the invitation from "AWS Educate Support" to complete the AWS Educate application.
If you have previously regiesterd for AWS Educate, proceed to step-8 https://www.awseducate.com/signin/SiteLogin, to find
a classroom.

2. Fill in the "Step 2/3: Tell us about yourself"

3. Choose "Click here to select an AWS Educate Starter Account"

4. Verify your email (check your email, it should be quick)

5. Agree to "Terms & Conditions"

6. You will recieve a message "We have received your application and it is currently under review. " but the approval isa automatic, so check your email again.

7. In the email with subject "AWS Educate Application Approved", click on the link to set your password

8. Click on "My Classrooms"

9. Click on "Go to classroom" (confirm popup message)

10. Agree to "Terms and Conditions". A new tab, https://labs.vocareum.com, will open up.

11. Click on "AWS Console". This will open AWS Management Console in a new tab.

12. Choose "EC2" from Services menu (under Compute category)

13. Click on "Launch Instance"

14. Choose "Ubuntu Server 18.04 LTS - 64-bit (x86) " (free tier eligible)

15. Choose the default option "t2.micro" (free tier eligible)

16. Click on "Review and Launch"

17. On the "Step 7: Review Instance Launch" screen, click "Launch"

18. A popup screen will ask "Select an existing key pair or create a new key pair"

19. Use menu to select "Create a new pair"

20. Name your key pair: 'aws101'

21. Click on "Download Key Pair" (do not lose the downloaded key, you will need it to login).
The downloaded key will be named aws101.pem

22. Click on "Launch Instance". 

23. On the "Launch Status" page, click on "View Instances".
If you have a small screen and scroll down to see the button.

24. Your instance should now be running (green light)

25. Click on "Connect" and copy the information on how to connect to your instance, something like:
"ssh -i aws101.pem ubuntu@ec2-3-83-39-24.compute-1.amazonaws.com"

26. Connect to your instance (Windows use Putty, Mac use Terminal, Linux shell execute ssh as above)
aws101.pem file is the **secret** key that lets you login.  See
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstances.html for detailed instructions

    - If Using Windows, you will need to convert the .pem key file to .ppk with Puttygen, 
    then add it to Putty under SSH/Auth (to do so enter/load your session info under Session, 
    then navigate to SSH/Auth, click on Browse, and select your .ppk file). 
   

27. Execute the commands below to setup your environment on your AWS instance after you login.

```
sudo apt-get update
sudo apt-get -y install g++ valgrind python-pip cppcheck unzip emacs25-nox
sudo -H pip install cpplint
```

28. Check that g++ is installed using 'g++ --version'

29. (Optional) Add your own public key to ~/.ssh/authorized_keys so you can login 
with your regular private key rather than aws101.pem key








