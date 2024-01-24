##CICD task
to run the image cmd: docker run -p 3000:3000 -d my-app
then open in your brother http://localhost:3000

to check 3 cases run:
.1 docker run -it -e MY_ARRAY="[1,2,2]"  my-app
the result should be 1
.2 docker run -it -e MY_ARRAY="[4,1,2,1,2]"  my-app
the result should be 4
.3 docker run -it -e MY_ARRAY="[1]"  my-app
the result should be 1
