FROM public.ecr.aws/docker/library/python:3.9.9-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD [ "python",  "main.py"]
