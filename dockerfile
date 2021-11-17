FROM node:16.8
EXPOSE 3000
RUN git clone https://github.com/josemariafr-upm/quizclone.git
WORKDIR quizclone
RUN npm install
RUN npm run-script migrate
RUN npm run-script seed
CMD["npm", "start"]
