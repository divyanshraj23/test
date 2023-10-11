FROM python:3.8-slim-buster

WORKDIR /python-docker
RUN pip3 install flask
RUN pip3 freeze >requirements.txt
RUN cat requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
