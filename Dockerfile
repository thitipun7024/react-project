FROM nginx:alpine
RUN apk add bash ###Solution: Make use of apk add to install packages on Alpine.
RUN apk update && apk upgrade --no-cache
RUN apk add --update nodejs npm

#RUN npm run build

COPY ./thitipun-react/ /usr/share/nginx/html/react-thitipun

WORKDIR /usr/share/nginx/html/react-thitipun
RUN npm install 
CMD npm start