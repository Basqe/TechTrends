# Define base image
FROM python:2.7
# Select working directory
WORKDIR /TechTrends
# Copy the files in the working directory
COPY ./techtrends /TechTrends
# Install packages defined in requirements file
RUN pip install -U pip wheel setuptools && \
    pip install -r requirements.txt

# Expose the application port
EXPOSE 3111
# Initialize database
RUN python init_db.py

CMD ["python","app.py"]
