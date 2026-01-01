## running container my-app
![alt text](image-5.png)
## accessible via local host and post 5050
![alt text](image-6.png)

```Dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY ./app/main.py /app

COPY ./app/requirements.txt /app

RUN pip install -r requirements.txt

EXPOSE 8000/tcp

ENTRYPOINT ["python3", "-m", "uvicorn", "main:app"]
CMD ["--host", "0.0.0.0", "--port", "8000"]

```
