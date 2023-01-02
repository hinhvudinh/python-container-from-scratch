FROM python:3.7.3-stretch

# working dir
WORKDIR /app

# copy source code to working dir
COPY . app.py /app/

# Install packages from requirements.txt
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt