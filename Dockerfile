FROM python:3.6.1-alpine
WORKDIR /flask
ADD . /flask
RUN pip install -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0"]