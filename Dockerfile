FROM nginx:alpine
COPY ./ /usr/share/nginx/html
EXPOSE 80
ENV Host=0.0.0.0
CMD ["nginx","-g", "daemon off;"]
