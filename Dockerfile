# Railway Free Tier Deployment - 24/7 Telegram Bot
FROM node:18-alpine

WORKDIR /app

# Install openclaw globally
RUN npm install -g openclaw

# Copy configuration
COPY openclaw.json /root/.openclaw/openclaw.json

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD openclaw health || exit 1

# Start the gateway
CMD ["openclaw", "gateway", "start"]
