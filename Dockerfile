     # Use the official Node.js image as the base image
     FROM node:20-lts

     # Set working directory inside the container
     WORKDIR /usr/src/app

     # Copy package.json and package-lock.json (if available)
     COPY package*.json ./

     # Install dependencies
     RUN npm install

     # Copy the rest of the application code
     COPY . .

     # Expose the port the app runs on (match this with your app's port)
     EXPOSE 8080

     # Command to run the application
     CMD ["node", "index.js"]
     