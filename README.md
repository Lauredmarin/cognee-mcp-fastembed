# cognee-mcp-fastembed

cognee-mcp with local fastembed embeddings — no external embedding API required.

## Why?

The default `cognee/cognee-mcp:main` image sends a `dimensions` parameter to embedding APIs.
Mistral `mistral-embed` does not support this and returns 422. This image uses fastembed locally.

## Usage

```bash
docker volume rm cognee_data
docker compose build
docker compose up -d
```

MCP endpoint: `https://cognee.maarin.dedyn.io/mcp`

## First boot

fastembed downloads `sentence-transformers/all-MiniLM-L6-v2` (~90MB) on first start.
