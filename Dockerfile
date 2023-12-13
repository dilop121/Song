FROM python:3.8

# Install system dependencies
RUN apt-get update && apt-get install -y git curl ffmpeg nodejs

RUN python3 -m pip install --upgrade youtube-dl


# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Set up the working directory and copy files
WORKDIR /app
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Set the default command
CMD ["python", "Muku.py"]
