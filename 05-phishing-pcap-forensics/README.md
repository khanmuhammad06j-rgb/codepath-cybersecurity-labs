# Network forensics: finding a phishing sender in packet captures

*CodePath CYB102 · Network forensics · Summer 2026*

Given four packet captures, found the one machine running a sextortion phishing campaign, using Wireshark display filters to separate it from normal mail traffic.

**Tools:** Wireshark, PCAP analysis, SMTP, Phishing analysis

## Results

| Result | What it means |
|---|---|
| **4** | packet captures analyzed |
| **24** | phishing emails sent within seconds |
| **1** | sending IP identified |

## How I found it

- Applied the imf filter (Internet Message Format) to see the actual emails inside each capture.
- One capture stood out: a single internal IP, 10.6.1.104, sent 24 emails within seconds to different recipients.
- The sender addresses rotated through random domains, and every subject line used threatening, urgent language: classic sextortion phishing.
- Confirmed with ip.src == 10.6.1.104, which showed the SMTP traffic going out to an external mail server.
- The other three captures each held a single legitimate test email.

## Why it matters

Packet captures are a recording of exactly what crossed the network. Knowing the right filters turns thousands of packets into one clear answer: who sent what, to whom, and when.

---

Part of [CodePath CYB102 Cybersecurity Labs](../README.md) · Full write-up on my [portfolio](https://muhammadukhan.vercel.app/projects/phishing-pcap-forensics)
