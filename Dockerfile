# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the port Flask will listen on
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
