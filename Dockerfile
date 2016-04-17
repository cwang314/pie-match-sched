# Base image is a Node image with gulp installed globally
FROM danieljiang/polymer:1.0

MAINTAINER <danieljiang@pioneers.berkeley.edu>

# Set working directory as a variable
# ENV dir = /usr/src/

# Add files from project folder to working directory
ADD . /usr/src/
VOLUME /usr/src/

# Expose port 5000
# "EXPOSE 5000" is not necessary, but it lets you know that something is going on at port 5000
EXPOSE 5000

# Specify dir as working directory
WORKDIR /usr/src/


ENTRYPOINT ["gulp"]
CMD ["serve"]
