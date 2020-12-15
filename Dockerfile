# Pulls a base image from version 16 of ubuntu/Docker must contain all the dependencies necessary to launch Python.
FROM ubuntu:16.04

# Docker runs docker-flask.
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# Copies files from the first parameter (the source .) to the destination parameter (in this case, /app/requirements.txt)
COPY ./requirements.txt /app/requirements.txt

# Sets the] work directory.
WORKDIR /app

# Installs packages (requirements.txt)
RUN pip install -r requirements.txt

# Copies everything to the Docker Image
COPY . /app

# Configures the container to run as an executable; only the last Entrypoint instruction executes.
ENTRYPOINT [ "python" ]


# Command to start this project
CMD [ "app.py" ]