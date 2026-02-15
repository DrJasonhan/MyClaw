# MyClaw

A personal AI assistant powered by [OpenClaw](https://github.com/OpenClaw/OpenClaw).

## Prerequisites

- Node.js ≥ 22
- API keys for AI models (Anthropic Claude or OpenAI) - required for full functionality
  - See [OpenClaw models documentation](https://docs.openclaw.ai/concepts/models) for setup

## Installation

```bash
npm install
```

## Quick Demo

To verify the installation is working:

```bash
./demo.sh
```

This will check the OpenClaw version, run health checks, and test the gateway startup.

## Running OpenClaw

### Start the Gateway

To run the OpenClaw gateway locally:

```bash
npm run gateway
```

Or directly with npx:

```bash
npx openclaw gateway --port 18789 --verbose
```

### Onboarding (First Time Setup)

If this is your first time using OpenClaw, run the onboarding wizard:

```bash
npm run onboard
```

Or directly with npx:

```bash
npx openclaw onboard
```

This wizard will guide you through:
- Setting up the gateway
- Configuring your workspace
- Connecting channels (WhatsApp, Telegram, Slack, Discord, etc.)
- Setting up skills

### Sending a Test Message

```bash
npm run agent -- --message "Hello from OpenClaw" --thinking high
```

Or directly with npx:

```bash
npx openclaw agent --message "Hello from OpenClaw" --thinking high
```

### Other Useful Commands

Check health and configuration:
```bash
npm run doctor
```

View available channels:
```bash
npx openclaw channels --help
```

Manage sessions:
```bash
npx openclaw sessions --help
```

## Documentation

For full documentation, visit [docs.openclaw.ai](https://docs.openclaw.ai)

## Quick Start Guide

1. **Install dependencies**: `npm install`
2. **Run onboarding**: `npm run onboard` (first time only)
3. **Start the gateway**: `npm run gateway`
4. **Send a test message**: `npm run agent -- --message "Ship checklist"`

## Features

- **Multi-channel inbox** — WhatsApp, Telegram, Slack, Discord, Google Chat, Signal, iMessage, and more
- **Voice Wake + Talk Mode** — Always-on speech for macOS/iOS/Android
- **Live Canvas** — Agent-driven visual workspace
- **First-class tools** — Browser, canvas, nodes, cron, sessions, and platform actions
- **Local-first** — Run on your own devices for privacy and control