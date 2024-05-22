# Use an official Python runtime as a parent image
FROM python:3.13.0b1-slim-bullseye

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy files
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application's code into the container
COPY . .

# Set the entrypoint to the script
ENTRYPOINT ["./entrypoint.sh"]