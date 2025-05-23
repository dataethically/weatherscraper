FROM jrembold/web2db:latest
# Health check to help Railway ensure the container is running
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD pg_isready -h $DB_HOST -U $DB_USER || exit 1
