# ✅ Base image - official Node.js
FROM node:18

# ✅ Set working directory
WORKDIR /usr/src/app

# ✅ Copy only package.json to install dependencies
COPY package.json ./

# ✅ Install dependencies without lockfile
RUN npm install

# ✅ Copy all remaining bot files
COPY . .

# ✅ Expose port (optional, if using express or API)
EXPOSE 3000

# ✅ Start the bot with server.js
CMD ["node", "server.js"]
