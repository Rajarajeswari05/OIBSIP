## Nmap Installation

Kali Linux was already installed in a local virtual machine environment and Nmap was available by default.

To verify that Nmap was installed correctly, the following command was executed:

```bash
nmap --version
NMAP SCAN RESULTS

Oasis Infobyte Cyber Security Internship
Task 1 – Basic Network Scanning with Nmap

==================================================

1. SCAN ENVIRONMENT
   ==================================================

Operating System: Kali Linux
Nmap Version: 7.99
Primary Target: 192.168.163.129
Additional Target: 127.0.0.1

==================================================
2. BASIC NMAP SCAN
==================

Command:

nmap 192.168.163.129

Observation:

The host was up and Nmap scanned the default 1000 TCP ports.

Result:

1000 scanned TCP ports were filtered.
No open ports were identified.

==================================================
3. SERVICE VERSION SCAN
=======================

Command:

nmap -sV 192.168.163.129

Observation:

The host was up, but no open TCP ports were identified.

Result:

No running network services were identified by the scan.

==================================================
4. OS DETECTION SCAN
====================

Command:

sudo nmap -O 192.168.163.129

Observation:

The host was up, but Nmap could not provide specific operating
system details because there were not enough fingerprints available.

Result:

OS identification was not available from this scan.

==================================================
5. LOCALHOST SCAN
=================

Command:

sudo nmap -sS -sV -O 127.0.0.1

Observation:

The localhost was up and the scan completed successfully.

Result:

1000 TCP ports were reported as closed.
No open TCP ports were identified.

==================================================
6. OPEN PORT ANALYSIS
=====================

Open ports identified:

None.

Since no open ports were found, there were no individual
network services available for port-level risk analysis.

==================================================
7. SECURITY OBSERVATIONS
========================

The primary target returned filtered ports. This means Nmap
did not receive a response that allowed the ports to be
classified as open or closed.

The localhost scan returned closed ports, meaning the system
responded but no application was listening on the scanned ports.

No exposed TCP services were identified during this assessment.

==================================================
8. RECOMMENDATIONS
==================

1. Disable unnecessary network services.
2. Maintain appropriate firewall rules.
3. Regularly scan systems for newly exposed services.
4. Keep required services updated.
5. Perform another scan after major system or network changes.

==================================================
9. ETHICAL USE
==============

The scans were performed only against my own Kali Linux
environment. Nmap should only be used on systems that are
owned by the tester or where explicit authorization has been
provided.
