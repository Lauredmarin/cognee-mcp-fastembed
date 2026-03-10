FROM cognee/cognee-mcp:main

# Install fastembed for local embeddings
RUN /app/.venv/bin/pip install fastembed
