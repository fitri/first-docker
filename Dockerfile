# getting ready made images containing node env from dockerhub
# after : is the flavour of the linux, refer dockerhub for which one to use
FROM node:alpine

# we copied all files/folder from current dev dir into the images file system in /app folder
COPY . /app

# then we execute the command from the images dir we created just now, we marked the /app as workdir then this will be default dir so we don't need to specify the dir name when running
WORKDIR /app
CMD node app.js
