
---

#### **File: setup.sh**  
This script automates the entire setup process.

```bash
#!/bin/bash

# Update system and install necessary packages
echo "Updating system and installing packages..."
sudo apt update && sudo apt install -y openssh-server ufw fail2ban

# Enable SSH key authentication
echo "Setting up SSH key authentication..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "Paste your public key below and press Ctrl+D:"
cat >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Configure Fail2ban
echo "Configuring Fail2ban..."
sudo cp configs/jail.local /etc/fail2ban/jail.local
sudo systemctl restart fail2ban

# Configure UFW
echo "Configuring UFW firewall..."
sudo ufw allow OpenSSH
sudo ufw enable

echo "Setup complete! Your server is now more secure."

