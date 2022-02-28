# Example: https://docs.aws.amazon.com/apprunner/latest/dg/config-file-examples.html
version: 1.0
runtime: python3
build:
  commands:
    build:
      - pip install -r requirements.txt
run:
  runtime-version: 3.8
  command: uvicorn --host 0.0.0.0 --port 8080 --log-level info main:app
  network:
    port: 8080
