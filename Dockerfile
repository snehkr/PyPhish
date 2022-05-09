# Dockerfile

# Author       : SnehKr
# Github       : https://github.com/SnehKr
# Messenger    : https://m.me/SnehKr
# Email        : kasroudrakrd@gmail.com
# Date         : 02-05-2022
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:10
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/SnehKr/PyPhish"

# Working directory
WORKDIR PyPhish/
# Add files 
ADD . /PyPhish

# Installing other packages
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean

# Main command
CMD ["python3", "PyPhish.py"]

## Wanna run it own? Try following commnads:

## "cd PyPhish", "docker build . -t PyPhish:1.0", "docker run --rm -it PyPhish:1.0"