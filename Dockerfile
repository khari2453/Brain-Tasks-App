
# Use lightweight Nginx image

# NEW (Amazon ECR Public)
FROM public.ecr.aws/nginx/nginx:alpine


# Set working directory (optional)
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy pre-built React app into Nginx html folder
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
