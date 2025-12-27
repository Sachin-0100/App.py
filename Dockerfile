# Use a tiny version of Python as the base
FROM python:3.9-slim

# Create a folder for our code inside the container
WORKDIR /app

# Copy the requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy our app code
COPY app.py .

# Tell the container to listen on port 5000
EXPOSE 5000

# The command to start the app
CMD ["python", "app.py"]