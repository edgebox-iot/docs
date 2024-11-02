FROM ghcr.io/astral-sh/uv:python3.13-alpine

WORKDIR /app

COPY . .
RUN ls -la

RUN uv sync --frozen

EXPOSE 8000

ENTRYPOINT [ "uv", "run", "mkdocs", "serve", "--dev-addr", "0.0.0.0:8000" ]
