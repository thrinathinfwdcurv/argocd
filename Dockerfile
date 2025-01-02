# Use an official base image (e.g., Python, Node.js, etc.)
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (if applicable)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files into the container
COPY . /app/

# Expose the port your app will run on (change as per your app's requirements)
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
