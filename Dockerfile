FROM cognee/cognee-mcp:main
RUN mkdir -p /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system/databases \
    && chmod -R 777 /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system
