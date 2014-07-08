# UTM Stripper

This docker container removes utm parameters from a url.

## To Build This Image

from inside the repository root folder

    docker build -t cloudspace/ruby-utm-stripper ./

## To Run This Image

this will run this docker image as a one shot container, it will output the url with utm parameters removed and then exit and remove itself.

    docker run --rm cloudspace/ruby-utm-stripper /.rbenv/versions/2.1.2/bin/ruby /run.rb "[url_to_strip]"


## To Run This Image For Troubleshooting

start the docker image in daemon mode and open port 22, set a root password

    docker run -e "root_pw=cersei" -p 22 -d cloudspace/ruby-utm-stripper run.sh
    
find out what port number has been opened to your local system by checking the current running docker images. this port will be mapped to 22 in the container

    docker ps
    
then ssh into the container and give it the password you had it set

    ssh root@0.0.0.0 -p [port_number]
    
now you can poke around and run things manually to troubleshoot any errors