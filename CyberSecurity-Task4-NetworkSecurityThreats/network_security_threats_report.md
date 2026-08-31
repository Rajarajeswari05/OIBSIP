# Common Network Security Threats

## 1. Introduction

Network security is important because modern organisations depend heavily on networks to communicate, store information, provide services, and connect users and systems. Attackers can target network infrastructure in different ways to interrupt services, intercept communication, impersonate systems, or redirect users to malicious destinations. Understanding common network attacks and applying suitable security controls can help organisations reduce their risk and protect the confidentiality, integrity, and availability of their systems and data.

---

## 2. DoS and DDoS Attacks

### What is a DoS Attack?

A Denial-of-Service (DoS) attack attempts to make a system, application, or network service unavailable to legitimate users. An attacker may send a large number of requests or packets so that the target uses its available resources handling the unwanted traffic.

### What is a DDoS Attack?

A Distributed Denial-of-Service (DDoS) attack is similar to a DoS attack, but the traffic comes from multiple systems at the same time. These systems may be compromised devices controlled by an attacker.

Because the traffic originates from many sources, DDoS attacks can be more difficult to filter and stop.

### Real-World Example

In 2016, the Mirai botnet was used in a major DDoS attack against Dyn, a DNS infrastructure provider. The attack affected access to several well-known Internet services.

### Impact

A successful DoS or DDoS attack can result in:

- Website or service downtime
- Loss of availability for legitimate users
- Financial losses
- Damage to an organisation's reputation
- Increased operational and recovery costs

### Mitigation Strategies

1. **Traffic filtering:** Use firewalls and filtering systems to identify and block unwanted traffic.
2. **Rate limiting:** Limit the number of requests that can be accepted from a source within a specific period.
3. **DDoS protection services:** Use dedicated DDoS mitigation and traffic-scrubbing services for large attacks.

---

## 3. Man-in-the-Middle (MITM) Attacks

### What is a MITM Attack?

A Man-in-the-Middle attack occurs when an attacker secretly places themselves between two communicating parties. The attacker may intercept or manipulate communication without the participants being aware of it.

For example, an attacker on an insecure network could attempt to intercept traffic between a user and a web service.

### Real-World Example

In 2015, researchers demonstrated attacks against Lenovo's Superfish software, where certificates installed on affected systems could allow encrypted HTTPS traffic to be intercepted.

### Impact

A MITM attack may allow an attacker to:

- Read intercepted communication
- Capture sensitive information
- Steal authentication credentials
- Modify information during transmission
- Impersonate one of the communicating parties

### Mitigation Strategies

1. **Use HTTPS:** Encrypt web communication using TLS.
2. **Use secure networks:** Avoid transmitting sensitive information over untrusted networks.
3. **Certificate validation:** Ensure systems properly validate digital certificates and do not ignore certificate warnings.

---

## 4. IP Spoofing

### What is IP Spoofing?

IP spoofing occurs when an attacker modifies the source IP address of network packets so that the packets appear to come from another system.

The technique can be used to hide the actual source of traffic or to make traffic appear to originate from a trusted address.

### Real-World Example

IP spoofing has been widely used in reflection and amplification DDoS attacks. Attackers can forge source IP addresses so that responses from other services are sent toward the victim.

### Impact

IP spoofing can:

- Hide the actual source of network traffic
- Assist in DDoS attacks
- Bypass weak IP-based trust controls
- Make network investigations more difficult

### Mitigation Strategies

1. **Ingress and egress filtering:** Filter packets with invalid or unexpected source addresses.
2. **Avoid IP-only authentication:** Do not rely only on source IP addresses for authentication.
3. **Network monitoring:** Monitor unusual traffic patterns and investigate suspicious sources.

---

## 5. DNS Poisoning and DNS Spoofing

### What is DNS Poisoning?

DNS poisoning occurs when incorrect DNS information is introduced into a DNS resolver's cache. Users may then be directed to an incorrect or malicious IP address when they request a legitimate domain.

### What is DNS Spoofing?

DNS spoofing involves providing false DNS responses so that a domain name resolves to an attacker-controlled or incorrect destination.

### Real-World Example

DNS cache poisoning has historically been used to redirect users from legitimate websites to malicious destinations. The Kaminsky DNS vulnerability discovered in 2008 demonstrated the serious risks associated with weaknesses in DNS resolution.

### Impact

DNS poisoning or spoofing can result in:

- Users being redirected to malicious websites
- Credential theft through fake websites
- Malware distribution
- Loss of trust in network services
- Interception or manipulation of network connections

### Mitigation Strategies

1. **DNSSEC:** Use DNS Security Extensions to provide authenticity and integrity for DNS responses.
2. **Secure DNS infrastructure:** Keep DNS servers updated and properly configured.
3. **Monitoring:** Monitor DNS traffic and investigate unexpected DNS changes or unusual responses.

---

## 6. Comparison of Network Security Threats

| Threat | Attack Vector | Who is at Risk? | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| DoS/DDoS | Large volume of network or application traffic | Websites, servers, organisations | Medium to High | Medium |
| MITM | Interception of network communication | Users and organisations | Medium | Medium |
| IP Spoofing | Forged source IP addresses | Networks and online services | Medium | Medium |
| DNS Poisoning/Spoofing | Manipulation of DNS resolution | Internet users and organisations | Medium | Medium |

---

## 7. General Security Recommendations

Organisations can reduce network security risks by following basic security practices:

1. Keep operating systems, applications, and network devices updated.
2. Use firewalls and network segmentation to limit unnecessary access.
3. Encrypt sensitive network communication.
4. Monitor network traffic for unusual behaviour.
5. Use strong authentication instead of relying only on IP addresses.
6. Maintain secure and properly configured DNS infrastructure.
7. Regularly review security logs and investigate suspicious activity.
8. Train employees to recognise suspicious network and social engineering activity.

---

## 8. Key Takeaways for Network Administrators

### 1. Protect Availability

Organisations should prepare for DoS and DDoS attacks using traffic filtering, rate limiting, and appropriate DDoS protection.

### 2. Protect Communication

Encryption such as HTTPS and TLS helps reduce the risk of attackers reading or modifying network traffic.

### 3. Do Not Trust Network Identity Alone

IP addresses and DNS responses should not automatically be trusted. Strong authentication, monitoring, and validation should be used.

---

## 9. Conclusion

Network attacks can affect the availability, confidentiality, and integrity of organisational systems. DoS and DDoS attacks mainly target availability, while MITM attacks focus on communication and IP spoofing can hide or manipulate the apparent source of traffic. DNS poisoning and spoofing can redirect users to unintended destinations.

There is no single security control that can prevent every type of network attack. A combination of firewalls, encryption, secure DNS, network monitoring, strong authentication, regular patching, and security awareness provides a stronger overall defence.

---

## 10. References

1. National Institute of Standards and Technology (NIST) – Cybersecurity resources  
   https://www.nist.gov/cybersecurity

2. Cybersecurity and Infrastructure Security Agency (CISA) – Cybersecurity guidance  
   https://www.cisa.gov/topics/cyber-threats-and-advisories

3. MITRE ATT&CK – Enterprise techniques and attack information  
   https://attack.mitre.org/

4. Cloudflare Learning Center – DDoS, DNS and network security topics  
   https://www.cloudflare.com/learning/

5. OWASP – Web and application security resources  
   https://owasp.org/

---

## Ethical Considerations

The information in this report is intended for cybersecurity education and defensive security awareness. Network security testing should only be performed on systems and networks where the tester has explicit permission.
