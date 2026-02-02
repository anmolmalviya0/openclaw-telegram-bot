# 🤖 OpenClaw 24/7 Cloud Telegram Bot

Deploy your Telegram bot to Railway for **FREE 24/7** hosting!

## 🚀 Quick Deploy to Railway

### Option 1: GitHub Deploy (Recommended)
1. Create a new GitHub repo
2. Push this folder to GitHub:
   ```bash
   cd openclaw-railway
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin YOUR_GITHUB_REPO_URL
   git push -u origin main
   ```
3. Go to [Railway.app](https://railway.app)
4. Click "New Project" → "Deploy from GitHub repo"
5. Select your repo
6. Add environment variables:
   - `TELEGRAM_BOT_TOKEN`: Your bot token
   - `HF_TOKEN`: Your Hugging Face token
7. Deploy! 🎉

### Option 2: Railway CLI
```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Initialize project
railway init

# Add environment variables
railway variables set TELEGRAM_BOT_TOKEN=your_token_here
railway variables set HF_TOKEN=YOUR_HF_TOKEN_HERE

# Deploy
railway up
```

## 🌟 Features
- ✅ **100% FREE** - Uses Railway free tier ($5/month credit, enough for this bot!)
- ✅ **24/7 Uptime** - Runs continuously
- ✅ **Fast AI** - Hugging Face Llama 3.1 8B (2-4 second responses)
- ✅ **No Credit Card** - Railway's free trial doesn't require payment info initially

## ⚙️ Configuration

The bot uses Hugging Face's free API with these settings:
- Model: `meta-llama/Meta-Llama-3.1-8B-Instruct`
- Speed: 2-4 seconds per response
- Cost: $0 (Free tier)

## 📊 Railway Free Tier Limits
- $5 credit per month (trial)
- 500 hours of runtime (enough for 24/7!)
- No credit card required initially

## 🔧 Troubleshooting

**Bot not responding?**
```bash
# Check logs on Railway dashboard
# Or via CLI:
railway logs
```

**Need to restart?**
```bash
railway restart
```

**Check status:**
```bash
railway status
```

## 🎯 What You Get
- Permanent 24/7 cloud hosting
- Auto-restart on failure
- Health checks every 30 seconds
- Same fast AI you tested locally (Hugging Face)

## 📝 Environment Variables Required
- `TELEGRAM_BOT_TOKEN` - Get from @BotFather on Telegram
- `HF_TOKEN` - Your Hugging Face API token

---

**Made with ❤️ using OpenClaw + Railway + Hugging Face**
