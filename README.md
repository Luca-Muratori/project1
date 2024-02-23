Upload files to AWS S3 using a simple and intuitive intuitive Bash CLI tool. Inspired by popular storage services, it offers a streamlined upload experience, empowering you to focus on what matters most.

Phase 0
-install aws on your local machine (in my case Ubuntu VM), create an IAM account, create a bucket, access aws cli and insert your credential

Phase 1
-using the temrinal, navigate to the folder where the file project1.sh is stored and use this command chmod +x project1.sh so you will have the permission to run this application

Phase 2
-run this command, in the same folder as you were on the Phase 1, ./project1.sh ( or in case you rename the file ./<file-name>.sh)

Phase 3
-paste the bucket name, that you create on phase 0
-paste the file path that you want to upload on the bucket

Phase 4
-it will return success if everything is going well, with the uploaded link and if you check your bucket you'll see that it will return the uploaded file
