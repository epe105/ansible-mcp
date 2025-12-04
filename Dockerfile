# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy your server code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade httpx mcp fastmcp

# Expose HTTP port
EXPOSE 8080

# Run the server
CMD ["python", "ansible_mcp_http.py"]