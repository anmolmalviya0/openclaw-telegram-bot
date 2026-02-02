# Railway Free Tier Deployment - 24/7 Telegram Bot
FROM node:20-slim

WORKDIR /app

# Install git (required for npm dependencies)
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Create package.json with openclaw as dependency
RUN echo '{"name":"openclaw-bot","version":"1.0.0","dependencies":{"openclaw":"latest"}}' > package.json

# Install openclaw and its dependencies
RUN npm install

# Copy configuration
COPY openclaw.json /root/.openclaw/openclaw.json

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD npx openclaw health || exit 1

# Start the gateway
CMD ["npx", "openclaw", "gateway", "start"]
