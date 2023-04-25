FROM node:lts

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY node_modules /node_modules
COPY *.cjs ./
COPY *.ts ./
COPY *.json ./
COPY index.html ./
COPY public public
COPY src src

EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]