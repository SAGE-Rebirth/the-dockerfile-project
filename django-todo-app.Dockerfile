# Start with a Python 3.9 image
FROM python

# Set the working directory to /app
WORKDIR /todoApp

# Copy the requirements.txt file into the container
COPY requirement.txt .

# Install the required packages
RUN pip3 install -r requirement.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 8000 for the Django application
EXPOSE 8000

# Collect static files
RUN python manage.py

# Run Django's migrate command to create the database schema
RUN python manage.py migrate

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]