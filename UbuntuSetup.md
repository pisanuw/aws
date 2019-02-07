# Ubuntu Setup

1. Click on the invitation from "AWS Educate Support" to complete the AWS Educate application

2. Fill in the "Step 2/3: Tell us about yourself"

3. Choose "Click here to select an AWS Educate Starter Account"

4. Verify your email (check your email, it should be quick)

5. Agree to "Terms & Conditions"

6. You will recieve a message "We have received your application and it is currently under review. " but the approval isa automatic, so check your email again.

7. In the email with subject "AWS Educate Application Approved", click on the link to set your password

8. Click on "My Classrooms"

9. Click on "Go to classroom" (confirm popup message)

10. Agree to "Terms and Conditions"

11. Click on "AWS Console"

12. Choose "EC2" from Services menu (under Compute category)

13. Click on "Launch Instance"

14. Choose "Ubuntu Server 18.04 LTS" (free tier eligible)

15. Choose the default option "t2.micro" (free tier eligible)

16. Click on "Review and Launch"

17. On the "Step 7: Review Instance Launch" screen, click "Launch"

18. A popup screen will ask "Select an existing key pair or create a new key pair"

19. Use menu to select "Create a new pair"

20. Name your keya pair: 'aws101'

21. Click on "Download Key Pair" (do not lose the downloaded key, you will need it to login)

22. Click on "Launch Instance"

23. On the "Launch Status" page, click on "View Instances"

24. Your instance should now be running (green light)

25. Click on "Connect" and copy the information on how to connect to your instance, something like:
"ssh -i "aws101.pem" ubuntu@ec2-3-83-39-24.compute-1.amazonaws.com"

26. Connect to your instance (Windows use Putty, Mac use Terminal, Linux shell execute ssh as above)

27. Execute the commands below to setup your environment


```
sudo apt-get update
sudo apt-get -y install g++ valgrind python-pip cppcheck unzip emacs25-nox
sudo -H pip install cpplint
```

28. Check that g++ is installed using 'g++ --version'

29. (Optional) Add your own public key to ~/.ssh/authorized_keys so you can login with your regular private key rather than aws101.pem key








