FROM public.ecr.aws/docker/library/python:3.9.9-slim

EXPOSE 8080

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD [ "python",  "main.py"]
