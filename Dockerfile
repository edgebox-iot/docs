FROM ghcr.io/astral-sh/uv:python3.13-alpine

WORKDIR /app

COPY requirements.txt .

RUN uv pip install -r requirements.txt --system

COPY . .

EXPOSE 8000

ENTRYPOINT [ "mkdocs", "serve", "--dev-addr", "0.0.0.0:8000" ]
