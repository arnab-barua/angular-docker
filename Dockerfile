FROM node:lts-alpine AS Build_Stage
# Set App folder as the working directory in container.
WORKDIR /App
# Copy all files inside App folder of container.
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine AS Run_Stage
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=Build_Stage /App/dist/angular-docker /usr/share/nginx/html