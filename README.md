# Documentation (How to Run the Project)

Here’s how to run the project using Docker and Docker Compose:

### 1. Ensure you have Docker installed:
[Install Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) on your machine.

### 2. Create a .env file (if not present):
Ensure you have a .env file in the root of your project with the necessary environment variables. For example:

#### REACT_APP_API_BASE_URL=https://your-api-url.com/api/


### 3. Build and run the application:

Open a terminal, navigate to the root directory of your project, and run:

### `docker-compose up --build`

This command builds the Docker image and starts your React.js application in a container.

### 4. Access the application:

Once the container is running, open a browser and navigate to [http://localhost:3000](http://localhost:3000) to access the application.