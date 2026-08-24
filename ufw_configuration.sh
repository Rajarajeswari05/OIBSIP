#!/bin/bash

# UFW Basic Firewall Configuration
# Oasis Infobyte Cyber Security Internship - Task 2

echo "Configuring UFW firewall..."

# Set default policies
ufw default deny incoming
ufw default allow outgoing

# Allow SSH
ufw allow 22/tcp

# Deny HTTP
ufw deny 80/tcp

# Allow HTTPS
ufw allow 443/tcp

# Allow DNS
ufw allow 53

# Enable UFW
ufw --force enable

# Display firewall status
ufw status verbose
