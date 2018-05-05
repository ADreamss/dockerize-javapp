# dockerize-javapp

Example to dockerize a java application using Apache-Ant + Ivy.
This project is based on https://github.com/skeeto/sample-java-project

## Docker

Build the Docker image with the following commands:

```
docker build -t test/dockerize-javapp .
```

## Usage

Execute from the working directory.
The java application executes a greeting with the name that is passed to it as an environment variable.

```
docker run -e NAME=Adrian --rm test/dockerize-javapp
```
## Output
After to the application build, you have to see a greet like:
###### Hello, Adrian!
