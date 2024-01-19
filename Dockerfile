#using Node v10
FROM node:10
# Create app directory
WORKDIR /usr/src/lafs

#install app dependencies
# A wildcard is used to ensure both package.json ANS package-lock.json are copied
#where available (npm@5+)
Copy package*.json ./
RUN npm install -g @angular/cli@v6-lts
RUN npm install
#If you are building your code for production
# RUN npm ci --only=production

#Bundle app source
COPY . .
#Expose port 3000 outside container
Expose 4200
#command used to start application
CMD ng serve --host 0.0.0.0
