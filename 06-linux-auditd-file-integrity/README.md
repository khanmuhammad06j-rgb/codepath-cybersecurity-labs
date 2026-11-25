# File integrity monitoring with Linux auditd

*CodePath CYB102 · Host monitoring · Summer 2026*

Put kernel-level watch rules on sensitive files, let three attack scripts run, and used the audit log to prove exactly which script changed which file.

**Files:** [`watch-rules.sh`](watch-rules.sh), the auditd watch rules used in this lab.

**Tools:** Linux, auditd, auditctl, ausearch

## Results

| Result | What it means |
|---|---|
| **4** | tampered files detected |
| **3** | attack scripts |
| **4/4** | changes traced to the script that made them |

## Which attack changed which file

| File | Changed by |
|---|---|
| cloudia.txt | attack-a |
| oakley.txt | attack-b |
| squeaky.txt | attack-b |
| precipitation.csv | attack-c |

## How it works

- auditctl -w <file> -p wa -k <key> watches a file for writes and attribute changes, tagged with a search key.
- The kernel logs every matching system call, so nothing slips past the watch.
- ausearch -k <key> pulls up only that file’s events, and the comm= field names the process that made the change.

---

Part of [CodePath CYB102 Cybersecurity Labs](../README.md) · Full write-up on my [portfolio](https://muhammadukhan.vercel.app/projects/linux-auditd-file-integrity)
