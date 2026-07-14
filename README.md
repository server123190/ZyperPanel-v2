# 🚀 ZyperPanel - Powerful Game Server Management Panel

_A modern, open-source game server management panel with multi-node support_

[![Discord](https://img.shields.io/discord/123456789012345678?color=7289DA&label=Support%20Server&logo=discord&logoColor=white)](https://discord.gg/v8swAnehVP)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/server123190/ZyperPanel-v2)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)

ZyperPanel consists of two components that work together:

- **[ZyperPanel](#-zyperpanel-panel)** — the web-based control panel your users and admins interact with.
- **[ZyperPanel Daemon](#%EF%B8%8F-zyperpanel-daemon)** — the lightweight node service that runs on each machine hosting game servers, and talks to the panel to manage Docker containers.

## 📑 Table of Contents

- [ZyperPanel (Panel)](#-zyperpanel-panel)
  - [Features](#-features)
  - [Quick Start](#-quick-start)
- [ZyperPanel Daemon](#%EF%B8%8F-zyperpanel-daemon)
  - [What is the Daemon?](#-what-is-the-daemon)
  - [Features](#-features-1)
  - [Quick Installation](#-quick-installation)
- [License](#-license)
- [Support](#-support)

---

## 🚀 ZyperPanel (Panel)

### ✨ Features

#### 🎮 Game Server Support

- **Minecraft**: Paper, Spigot, Purpur, Vanilla, BungeeCord, Velocity
- **Multiple Versions**: Support for all major Minecraft versions
- **Auto-Updates**: Keep servers updated with latest builds
- **Plugin Management**: One-click plugin installation from SpigotMC & Modrinth

#### 🖥️ Management Tools

- **Live Console**: Real-time console with command execution
- **File Manager**: Full-featured web-based file browser and editor
- **Player Management**: Kick, ban, whitelist, and op management
- **Server Stats**: Real-time CPU, RAM, and player monitoring
- **Backup System**: Automated server backups

#### 🌐 Multi-Node Architecture

- **Distributed Nodes**: Deploy servers across multiple physical machines
- **Load Balancing**: Automatic server distribution
- **Node Health Monitoring**: Real-time node status checking
- **Geographic Distribution**: Deploy servers closer to your players

#### 🔒 Security & Permissions

- **User Roles**: Admin, Moderator, User permissions
- **Server Isolation**: Each user's servers are fully isolated
- **API Security**: Secure API keys and authentication
- **SSL Support**: HTTPS encryption for all communications

### 🚀 Quick Start

#### Prerequisites

- Node.js 18+ and npm
- Docker & Docker Compose
- PostgreSQL or MySQL (SQLite for development)

#### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/server123190/ZyperPanel-v2/zyperpanel67
   cd zyperpanel67
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Configure environment**

   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

4. **Set up database**

   ```bash
   npx prisma db push
   npx prisma generate
   ```

5. **Start the Panel**

   ```bash
   npm run build
   npm install -g pm2
   pm2 start npm --name "Zyper-Panel" -- start
   pm2 save
   pm2 startup
   ```

6. **Access the panel**

   Open the panel on port `3000`. Login credentials can be found in your `.env` file.

7. **Add admin / non-admin users via terminal**

   ```bash
   sudo npm run adduser
   ```

---

## 🖥️ ZyperPanel Daemon

_The powerful node daemon for ZyperPanel — run game servers across multiple machines_

[![Discord](https://img.shields.io/discord/123456789012345678?color=7289DA&label=Support%20Server&logo=discord&logoColor=white)](https://discord.gg/v8swAnehVP)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/ZyperPanel-v2/daemon)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

### 🎯 What is the Daemon?

The ZyperPanel Daemon is a lightweight Node.js service that runs on your game server nodes. It communicates with the main panel to manage Docker containers, execute commands, and monitor server resources.

### ✨ Features

#### 🐳 Container Management

- Docker container creation & management
- Auto-start on system boot
- Resource limits (CPU, RAM)
- Port mapping & network configuration

#### 📊 Real-time Monitoring

- CPU & Memory usage tracking
- Server uptime monitoring
- Player count statistics
- Network I/O monitoring

#### 🔧 Server Control

- Start/Stop/Restart servers
- Console command execution
- File management (upload/download/edit)
- Backup & restore operations

#### 🔐 Security

- API key authentication
- Container isolation
- Resource limits per server
- Secure WebSocket connections

### 🚀 Quick Installation

#### Prerequisites

- Node.js 18.x or higher
- Docker & Docker Compose
- At least 2GB RAM free
- Linux/Unix system (Ubuntu/Debian/CentOS)

#### 1. Clone & Install

```bash
# Clone the daemon repository
git clone https://github.com/ZyperPanel-v2/daemon.git
cd daemon

# Install dependencies
npm install
```

#### 2. Set up auto config and start the node

```bash
npm install -g pm2
pm2 start npm --name "Zyper-Daemon" -- start
pm2 save
pm2 startup
```

#### 3. Install all Java versions

```bash
sudo apt update && \
sudo apt install -y wget curl ca-certificates apt-transport-https gpg lsb-release && \
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | sudo gpg --dearmor -o /usr/share/keyrings/adoptium.gpg && \
echo "deb [signed-by=/usr/share/keyrings/adoptium.gpg] https://packages.adoptium.net/artifactory/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/adoptium.list && \
sudo apt update && \
sudo apt install -y temurin-8-jdk temurin-11-jdk temurin-17-jdk temurin-21-jdk
```

---

## 📄 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## 💬 Support

Join our [Discord server](https://discord.gg/v8swAnehVP) for help, updates, and community discussion.
