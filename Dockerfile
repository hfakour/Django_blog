# Step 1: Use an official Python runtime as a base image
FROM python:3.11-slim-bookworm
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements file into the container
COPY requirements.txt /app/

# Step 4: Install any dependencies specified in the requirements file
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Step 5: Copy the entire Django project into the container
COPY ./core /app

# Expose the port that the Django app will run on
EXPOSE 8000

# Step 6: Run the Django development server
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
