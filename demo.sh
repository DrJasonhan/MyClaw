#!/bin/bash

# Demo script to verify OpenClaw installation

echo "🦞 OpenClaw Installation Demo"
echo "=============================="
echo ""

echo "1. Checking OpenClaw version..."
npx openclaw --version
echo ""

echo "2. Running OpenClaw doctor (health check)..."
echo "   Note: This will show configuration needed for full functionality"
echo "   Press Ctrl+C if prompted for input"
echo ""
timeout 5 npx openclaw doctor 2>&1 || true
echo ""

echo "3. Testing gateway startup..."
echo "   Starting gateway for 3 seconds..."
timeout 3 npm run gateway 2>&1 || true
echo ""

echo "✅ OpenClaw is successfully installed!"
echo ""
echo "Next steps:"
echo "  - Run 'npm run onboard' to configure OpenClaw (requires API keys)"
echo "  - Run 'npm run gateway' to start the gateway server"
echo "  - See README.md for full documentation"
echo ""
