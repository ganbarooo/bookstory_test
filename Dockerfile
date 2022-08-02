FROM node:18-alpine
WORKDIR /app

RUN npm install -g npm
RUN npx create-react-app my-app
WORKDIR ./my-app

RUN npx storybook init
CMD ["npm", "run", "storybook"]
