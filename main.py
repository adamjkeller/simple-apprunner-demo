#!/usr/bin/env python3

from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI(
    title="App Runner Demo Service",
    description="Demo API",
    version="1.0.0",
)

@app.get("/health")
def health():
    return JSONResponse(status_code=status.HTTP_200_OK, content={"Status": "Healthy"})

@app.get("/")
def root():
    return JSONResponse(status_code=status.HTTP_200_OK, content="Hello from app runner!")

if __name__ == '__main__':
    import uvicorn
    uvicorn.run("main:app", host="0.0.0.0", port=8080, log_level="info")
