# CodePath CYB102: Cybersecurity Labs

Hands-on labs from CodePath's **Intermediate Cybersecurity (CYB102)** course, Summer 2026: threat hunting, SIEM investigations, incident response, network forensics, host monitoring, web app security and denial-of-service defense.

Each folder has a short write-up (what I did, what I found, what I'd fix) with screenshots, and some include the configs or searches I used.

**Muhammad Khan** · Network Deployment Technician · [Portfolio](https://muhammadukhan.vercel.app) · [LinkedIn](https://www.linkedin.com/in/muhammadkhan-u)

## Labs

| # | Lab | Tools |
|---|---|---|
| 01 | [Threat hunt: SolarWinds and Scattered Spider indicators in Splunk](01-threat-hunt-solarwinds-scattered-spider/) | Splunk, SPL, VirusTotal, Threat intelligence |
| 02 | [SIEM investigation: tracing a malware upload in Splunk](02-siem-malware-investigation/) | Splunk, SPL, Log analysis, Incident timeline |
| 03 | [Incident response: catching a mislabeled indicator](03-incident-response-ioc-validation/) | Cisco Catalyst, VirusTotal, AbuseIPDB, Incident response |
| 04 | [Defending nginx against a Slowloris denial-of-service attack](04-slowloris-dos-mitigation/) | nginx, Slowloris, Netdata, Linux |
| 05 | [Network forensics: finding a phishing sender in packet captures](05-phishing-pcap-forensics/) | Wireshark, PCAP analysis, SMTP, Phishing analysis |
| 06 | [File integrity monitoring with Linux auditd](06-linux-auditd-file-integrity/) | Linux, auditd, auditctl, ausearch |
| 07 | [Web app security: exploiting a directory traversal flaw](07-directory-traversal-attack/) | Bash, Node.js, Directory traversal, URL encoding |
| 08 | [The Data Dig: DDoS detection in a software-defined network](08-sdn-ddos-data-dig/) | Python (pandas), Wireshark, Splunk, Snort |

## Highlights

- **Threat hunting:** matched indicators from two real-world campaigns (SolarWinds and Scattered Spider) to **9 machines** in a simulated company's logs, using one reusable Splunk correlation search.
- **Incident response:** checked every indicator in an analyst's report and caught a "high-confidence malicious" IP that was actually a harmless CDN address.
- **DoS defense:** took an nginx server from locked up (~560 held connections) to serving normally under the same Slowloris attack.
- **Forensics:** found the one machine sending **24 phishing emails** in seconds across four packet captures.

## Skills

Splunk (SPL) · Wireshark · Linux auditd · nginx hardening · VirusTotal and AbuseIPDB · Cisco Catalyst · threat intelligence · IOC validation · incident response · Bash · Python (pandas)

## Note

Lab environments, datasets and scenarios were provided by CodePath for training. All companies, machines and incidents in them are simulated. These are summaries of my work and findings, not answer keys.
