# C Program with CI/CD and Docker Integration

This repository contains a simple C program with an `add` function, tested and deployed using GitHub Actions CI/CD pipeline. The Docker image is built and pushed to an Azure Container Registry (ACR) for easy deployment.

## Repository Structure

```bash
.
├── main.c             # Main file with test
├── Dockerfile         # Dockerfile to build the application
├── .github/
│   └── workflows/
│       └── ci-cd.yaml # GitHub Actions CI/CD pipeline configuration
└── README.md          # Project documentation


## Building the C Program Locally

git clone https://github.com/<your-username>/<your-repository>.git
cd <your-repository>

## Build the program

gcc -o test_add test_add.c add.c


## Run the program

./test_add

## Using docker to run and build
docker build -t c-program-test .
docker run --rm c-program-test


## To test the pipeline
git add .
git commit -m "Test CI pipeline"
git push origin main


## Instructions to Pull the Docker Image from ACR
docker pull midtermcicdregistry.azurecr.io/c-program-test:latest




