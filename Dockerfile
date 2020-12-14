# ---- Base Node ----
FROM python:3

# Create directory
RUN mkdir -p /app

# Set directory
WORKDIR /app

# Copy dependencies
COPY ./requirements.txt /app

# install app dependencies
RUN pip i -r requirements 

# copy project 
COPY ./ /app


# open port
EXPOSE 5000 

# start project
CMD ["python", "app.py"]