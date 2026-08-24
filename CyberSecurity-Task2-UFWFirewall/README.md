Task 2 – Basic Firewall Configuration with UFW

1. Introduction

This project was completed as part of my Oasis Infobyte Cyber Security Internship. The purpose of this task was to configure a basic firewall using UFW (Uncomplicated Firewall) on Kali Linux.

I configured different firewall rules to control incoming and outgoing network traffic and then verified the configuration.

 2. Objective

The main objectives of this task were:

- Install and configure UFW on Kali Linux.
- Set default firewall policies.
- Allow SSH traffic through port 22.
- Deny HTTP traffic through port 80.
- Add additional firewall rules for HTTPS and DNS.
- Enable the firewall and verify the configured rules.
- Test the HTTP rule.
- Document the complete configuration.

3. Environment Used

- Operating System: Kali Linux
- Firewall: UFW (Uncomplicated Firewall)
- Shell: Bash
- User: Root
- Network tool used for testing: curl

4. UFW Installation

UFW was installed using the following command:

bash
apt install ufw


5. Screenshots

UFW Configuration and Status

This screenshot shows the UFW installation/version, active firewall status, and configured firewall rules.



UFW Configuration Script

This screenshot shows the `ufw_configuration.sh` script used to document the firewall configuration.



HTTP Traffic Test

This screenshot shows the HTTP traffic test performed against the local system.


