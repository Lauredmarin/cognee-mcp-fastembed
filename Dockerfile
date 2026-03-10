FROM cognee/cognee-mcp:main

# Try uv first (cognee uses uv), fallback to pip
RUN uv pip install fastembed --system 2>/dev/null || \
    pip install fastembed 2>/dev/null || \
    pip3 install fastembed
