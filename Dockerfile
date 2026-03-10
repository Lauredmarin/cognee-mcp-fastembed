FROM cognee/cognee-mcp:main

RUN mkdir -p /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system/databases \
    && chmod -R 777 /app/.venv/lib/python3.12/site-packages/cognee/.cognee_system

RUN uv pip install fastembed --system 2>/dev/null || pip install fastembed

# Patch: forcer l'api_base dans le config LLM de cognee
RUN find /app -name "*.py" -exec grep -l "api.openai.com\|openai_default" {} \; | head -5
