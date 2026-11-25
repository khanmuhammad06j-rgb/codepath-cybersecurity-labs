# The Data Dig: DDoS detection in a software-defined network

*CodePath CYB102 · Team project · In progress · Summer 2026 (in progress)*

A four-person team analyzing a 1,048,575-row DDoS dataset from a simulated software-defined network, and adapting CISA’s DDoS response playbook to how SDN actually works.

**Tools:** Python (pandas), Wireshark, Splunk, Snort, Zeek, CISA playbooks

## Results

| Result | What it means |
|---|---|
| **1,048,575** | rows of labeled traffic |
| **4** | team members |
| **3** | hypotheses to test |
| **5** | changes to the CISA playbook |

## My role

- Researched SDN and the Ryu controller so the team understood where the data came from.
- Mapped the playbook’s phases to our findings: what detection and containment look like in this network.
- Co-wrote the playbook adaptation, and own the presentation.

## What we expect to find

- Attack traffic will have much higher packet rates and smaller, more uniform packets than normal traffic.
- A few source IPs will produce most of the traffic during attacks.
- Delay, jitter and packet loss will rise sharply during attack windows.

## Adapting CISA’s playbook to SDN

- **Detect at the controller:** The controller sees every switch’s flow table; Watch for spikes in flows, packet rate and uniform short flows
- **Contain with flow rules:** Push drop or rate-limit rules from the controller; Network-wide in seconds, instead of edge firewall rules
- **Thresholds from data:** Packet-rate and per-source limits taken from our own analysis; Replaces generic “unusual volume” wording
- **Validate against labels:** Score the playbook’s detection rules against the dataset’s ground truth; Drop steps that don’t apply to a lab dataset

---

Part of [CodePath CYB102 Cybersecurity Labs](../README.md) · Full write-up on my [portfolio](https://muhammadukhan.vercel.app/projects/sdn-ddos-data-dig)
