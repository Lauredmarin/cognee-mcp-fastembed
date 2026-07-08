FROM cognee/cognee-mcp:main
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc libpq-dev python3-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install "cognee[postgres]"
