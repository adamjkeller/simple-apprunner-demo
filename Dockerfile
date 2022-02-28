FROM public.ecr.aws/docker/library/python:3.9.9-slim

EXPOSE 8080

WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./main.py /app/

CMD [ "python",  "main.py"]
