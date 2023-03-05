FROM python:3.11-slim-bullseye

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

ENTRYPOINT [ "mkdocs", "serve", "--dev-addr", "0.0.0.0:8000" ]
