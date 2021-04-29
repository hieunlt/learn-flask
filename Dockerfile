# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim-buster

WORKDIR /app

EXPOSE 5000

# Install pip requirements
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["flask", "run"]
