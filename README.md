# Secure Linux Server Configuration

This project demonstrates how to secure a Linux server by:
- Setting up SSH key authentication for secure logins.
- Protecting against brute-force attacks using Fail2ban.
- Configuring a firewall (UFW) to allow only necessary traffic.

## Features
- Password-less SSH login
- Brute-force attack protection
- Minimal attack surface with a firewall

## Setup Instructions

### Prerequisites
- A Linux server (tested on Ubuntu 20.04)
- SSH access to the server
- A client machine with SSH installed

### Steps
1. Clone this repository:
    git clone https://github.com/<your-username>/secure-linux-server.git
    cd secure-linux-server
2. Run the setup script:
    bash setup.sh
3. Test the configuration

