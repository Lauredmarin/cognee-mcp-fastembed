FROM cognee/cognee-mcp:main

# Create data directories with correct permissions
RUN mkdir -p /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system/databases \
    && mkdir -p /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system/vector_db \
    && chmod -R 777 /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system

# Install fastembed for local embeddings
RUN uv pip install fastembed --system 2>/dev/null || pip install fastembed 2>/dev/null || pip3 install fastembed
