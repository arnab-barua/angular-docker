# angular-docker
Sample Angular application with docker


1. Clone 

2. Create an image
&nbsp;&nbsp;&nbsp;&nbsp; docker build -t img_angular .

3. Run a container from this image
&nbsp;&nbsp;&nbsp;&nbsp; docker run --name cont_angular -dp 8080:80 img_angular
