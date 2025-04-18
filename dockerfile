# Use the base image from your task
FROM python:slim

# Install necessary packages
RUN pip install polars
RUN pip install pandas
RUN pip install kestra

# Optionally, set a working directory
WORKDIR /app

# Set an entrypoint or keep it open for tasks
CMD ["python"]