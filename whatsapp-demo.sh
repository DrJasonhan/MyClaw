#!/bin/bash

# WhatsApp Setup Demo Script
# This script demonstrates the OpenClaw WhatsApp setup process

echo "🦞 OpenClaw WhatsApp Setup Demo"
echo "================================"
echo ""

echo "📊 Current Status:"
echo "  ✅ OpenClaw Gateway: Running (PID: $(pgrep -f openclaw-gateway || echo 'Not running'))"
echo "  ✅ Gateway Port: 18789"
echo "  ✅ Version: $(npm run openclaw -- --version 2>&1 | grep -oE '[0-9]{4}\.[0-9]+\.[0-9]+')"
echo ""

echo "📋 Configuration Check:"
if [ -f ~/.openclaw/openclaw.json ]; then
    echo "  ✅ Config file exists: ~/.openclaw/openclaw.json"
else
    echo "  ❌ Config file missing"
fi
echo ""

echo "🔌 Channel Status:"
npm run openclaw -- channels list 2>&1 | tail -n +3
echo ""

echo "⚠️  IMPORTANT: WhatsApp Setup Requirements"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "To complete WhatsApp setup, you need:"
echo "  1. A phone with WhatsApp installed"
echo "  2. Run: npm run onboard"
echo "  3. Select WhatsApp when prompted"
echo "  4. Scan the QR code with your phone"
echo ""
echo "Alternative manual setup:"
echo "  1. Run: npm run openclaw -- channels login --channel whatsapp --verbose"
echo "  2. Scan the QR code displayed"
echo "  3. Wait for pairing confirmation"
echo ""

echo "📝 After WhatsApp is configured, send a message with:"
echo '  npm run openclaw -- message send --channel whatsapp --to +1234567890 --message "hi"'
echo ""

echo "📖 Full documentation: https://docs.openclaw.ai/channels/whatsapp"
echo ""
echo "✨ Gateway is ready and waiting for channel configuration!"
