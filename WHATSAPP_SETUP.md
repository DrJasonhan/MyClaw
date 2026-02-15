# WhatsApp Setup Guide for OpenClaw

## Current Status

✅ **OpenClaw is Running!**
- Gateway is active on `ws://127.0.0.1:18789` (PID 4106)
- Version: 2026.2.14

## Setting Up WhatsApp

To send messages via WhatsApp using OpenClaw, you need to complete the following steps:

### 1. Run the Onboarding Wizard

The easiest way to configure WhatsApp is through the onboarding wizard:

```bash
npm run onboard
```

This wizard will:
- Guide you through WhatsApp pairing (QR code scanning)
- Configure your messaging channels
- Set up authentication

### 2. Manual WhatsApp Configuration

If you prefer manual setup, follow the official documentation:
- [WhatsApp Channel Documentation](https://docs.openclaw.ai/channels/whatsapp)

### 3. Requirements for WhatsApp

- A phone with WhatsApp installed
- Ability to scan a QR code to pair with WhatsApp Web
- The OpenClaw gateway must be running (already running ✅)

### 4. Sending Messages

Once WhatsApp is configured, you can send messages using:

```bash
# Send to a specific number (E.164 format)
npm run openclaw -- message send --channel whatsapp --to +1234567890 --message "hi"

# Or use the agent to send via WhatsApp
npm run openclaw -- agent --to +1234567890 --message "hi" --deliver --channel whatsapp
```

## Next Steps

1. **Run the onboarding wizard**: `npm run onboard`
2. **Follow the prompts** to set up WhatsApp
3. **Scan the QR code** with your phone when prompted
4. **Send your first message!**

## Important Notes

- **Gateway is already running** - No need to start it again
- **Configuration is stored** in `~/.openclaw/openclaw.json`
- **WhatsApp sessions** are stored in `~/.openclaw/` directory
- The gateway runs with `--allow-unconfigured` flag for easy testing

## Troubleshooting

If you encounter issues:

1. Check gateway status:
   ```bash
   npm run openclaw -- gateway status
   ```

2. View logs:
   ```bash
   npm run openclaw -- logs
   ```

3. Run health check:
   ```bash
   npm run doctor
   ```

4. Check WhatsApp channel status:
   ```bash
   npm run openclaw -- channels status
   ```

## References

- [OpenClaw Documentation](https://docs.openclaw.ai)
- [WhatsApp Channel Guide](https://docs.openclaw.ai/channels/whatsapp)
- [Getting Started](https://docs.openclaw.ai/start/getting-started)
