# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask app to the container
COPY . /app

# Install Flask inside the container
RUN pip install flask

# Expose port 5000 for Flask
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

