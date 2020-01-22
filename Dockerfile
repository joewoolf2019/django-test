# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.6

ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /django-test

# Set the working directory to /music_service
WORKDIR /django-test

# Copy the current directory contents into the container at /music_service
ADD . /django-test/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

WORKDIR /django-test/djangotest
