FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /project

## Step 2:
# Copy source code to working directory
COPY requirements.txt /project/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN python3 -m pip install --no-cache-dir -r requirements.txt

COPY app.py /project/
COPY model_data /project/model_data/

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python3", "app.py"]

