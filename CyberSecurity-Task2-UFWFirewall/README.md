# Basic Firewall Configuration with UFW

## 1. Introduction

This task was completed as part of my Oasis Infobyte Cyber Security Internship. The purpose of this task was to understand the basic configuration and use of a firewall in a Linux environment.

For this task, I used UFW (Uncomplicated Firewall) on Kali Linux to configure rules for controlling incoming and outgoing network traffic. I also verified the firewall status and tested the configured rules.

---

## 2. Objective

The main objectives of this task were:

- Install and verify UFW.
- Configure default firewall policies.
- Allow required network services.
- Deny an unwanted service port.
- Enable the firewall.
- Verify the configured firewall rules.
- Perform a basic HTTP traffic test.
- Understand how firewall rules can reduce unnecessary network exposure.

---

## 3. Environment Used

- **Operating System:** Kali Linux
- **Firewall:** UFW (Uncomplicated Firewall)
- **Terminal:** Kali Linux Terminal
- **Shell:** Bash
- **Testing Tool:** curl

---

## 4. UFW Installation and Verification

UFW was installed on the Kali Linux system using the package manager.

The installation was verified using:

```bash
ufw --version
```

The command displayed the installed UFW version and confirmed that UFW was available on the system.

### Observation

The UFW version information was displayed successfully.

### Analysis

Checking the version before configuring the firewall confirmed that UFW was installed correctly and ready to be configured.

---

## 5. Default Firewall Policies

The default firewall policies were configured as follows:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

The incoming policy was set to deny by default, while outgoing traffic was allowed.

### Observation

The firewall configuration showed that incoming connections were denied by default and outgoing connections were allowed.

### Analysis

A default deny incoming policy provides a basic security layer by preventing unsolicited incoming connections unless they are specifically allowed through a firewall rule.

Allowing outgoing traffic supports normal system communication while still keeping incoming access restricted.

---

## 6. Firewall Rules Configured

The following firewall rules were configured during the task.

### SSH – Port 22

```bash
sudo ufw allow 22/tcp
```

This rule allows TCP traffic on port 22, which is commonly used for SSH.

### HTTP – Port 80

```bash
sudo ufw deny 80/tcp
```

This rule denies TCP traffic on port 80.

### HTTPS – Port 443

```bash
sudo ufw allow 443/tcp
```

This rule allows HTTPS traffic through port 443.

### DNS – Port 53

```bash
sudo ufw allow 53
```

This rule allows traffic associated with DNS.

---

## 7. Enabling UFW

After configuring the required firewall rules, UFW was enabled.

The firewall status was checked using:

```bash
sudo ufw status
```

### Observation

The firewall status showed that UFW was active.

### Analysis

Enabling the firewall applies the configured rules to network traffic. The rules can then be used to control which connections are allowed or denied.

---

## 8. Firewall Status Verification

The configuration was verified using:

```bash
sudo ufw status verbose
```

The numbered rules were also checked using:

```bash
sudo ufw status numbered
```

### Observation

The output displayed the configured firewall policies and rules.

The configuration included:

- SSH port 22 allowed
- HTTP port 80 denied
- HTTPS port 443 allowed
- DNS port 53 allowed

### Analysis

The verification commands confirmed that the firewall rules were present and that the intended allow and deny policies had been configured.

Using the numbered status output also makes it easier to identify and manage individual firewall rules.

---

## 9. HTTP Traffic Test

A local HTTP test was performed using:

```bash
curl -I http://127.0.0.1
```

### Observation

The command was used to check the response from the local HTTP service.

The UFW configuration was also checked to confirm that TCP port 80 had a deny rule.

### Analysis

The test helped demonstrate how network traffic can be checked against the firewall configuration.

A connection failure by itself does not necessarily prove that UFW blocked the connection because there may not have been an HTTP service running on the local system.

Therefore, the UFW rule configuration was used together with the test result when analysing the behaviour.

---

## 10. Security Analysis

The firewall configuration provides a basic method of controlling network access to the system.

The default deny incoming policy reduces exposure by blocking incoming connections unless they are explicitly permitted.

Allowing SSH provides access for remote administration, while denying HTTP prevents incoming connections through port 80.

HTTPS and DNS were allowed according to the requirements of the task.

### Security Benefits

The configuration can help to:

- Reduce unnecessary network exposure.
- Restrict unwanted incoming connections.
- Control access to specific ports.
- Provide a basic layer of host-level protection.
- Make network access rules easier to review.

### Security Consideration

An open port is not automatically a vulnerability. However, services that are not required should generally not be exposed because every active service needs to be properly maintained and secured.

---

## 11. Open Port / Rule Analysis

| Port | Service | Firewall Rule | Security Purpose |
|---|---|---|---|
| 22 | SSH | ALLOW | Permits SSH administration |
| 80 | HTTP | DENY | Blocks HTTP traffic |
| 443 | HTTPS | ALLOW | Permits HTTPS traffic |
| 53 | DNS | ALLOW | Permits DNS traffic |

### Port 22 – SSH

SSH is commonly used for secure remote administration.

The port was allowed because administrative access may be required.

**Recommendation:** SSH access should be restricted to trusted networks or specific source addresses where possible.

### Port 80 – HTTP

HTTP traffic was denied as part of this task.

Blocking unnecessary HTTP access can reduce exposure when an HTTP service is not required.

**Recommendation:** If web access is required, HTTPS should generally be preferred.

### Port 443 – HTTPS

HTTPS traffic was allowed through port 443.

HTTPS provides encrypted communication between clients and web servers when correctly configured.

**Recommendation:** Keep HTTPS services updated and properly configured.

### Port 53 – DNS

DNS is used for domain name resolution.

Port 53 was allowed according to the task requirements.

**Recommendation:** DNS traffic should be restricted and monitored according to the system's actual requirements.

---

## 12. Recommendations

Based on the firewall configuration, the following recommendations can be followed:

1. Allow only the ports and services that are actually required.
2. Keep unnecessary services disabled.
3. Use firewall rules to restrict administrative access.
4. Prefer HTTPS instead of unencrypted HTTP where web communication is required.
5. Review firewall rules regularly.
6. Keep operating systems and network services updated.
7. Monitor firewall logs for unusual connection attempts.
8. Remove old firewall rules that are no longer required.

---

## 13. Screenshots

The following screenshots were captured during the UFW configuration and testing process.

### UFW Configuration and Status

This screenshot shows the UFW installation/version, firewall status, and configured rules.

![UFW Configuration and Status](screenshots/01_ufw_configuration_status.png)

### UFW Configuration Script and HTTP Test

This screenshot shows the firewall configuration script and the HTTP traffic test performed against the local system.

![UFW Script and HTTP Test](screenshots/02_ufw_script_and_http_test.png)

---

## 14. Ethical Considerations

All firewall configuration and testing was performed on my own Kali Linux system for educational purposes.

No external systems, public servers, or unauthorised networks were targeted.

Firewall testing and network security activities should only be performed on systems where the tester has permission to make changes or conduct testing.

---

## 15. Conclusion

This task gave me practical experience with UFW and basic Linux firewall configuration.

I learned how to configure default incoming and outgoing policies, create allow and deny rules, enable the firewall, verify the configured rules, and perform a basic HTTP connectivity test.

The task also helped me understand that firewall configuration is an important part of system security because it can reduce unnecessary network exposure and control access to specific services.

Overall, this exercise improved my understanding of host-based firewalls and basic network traffic control in a Linux environment.
