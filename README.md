# OSS Audit — Git
### Open Source Software Capstone Project | VITyarthi

---

## Student Details

| Field | Details |
|-------|---------|
| Name | Vasu |
| Registration Number | 24BAI10837|
| Slot | A24 |
| Software Audited | Git |
| License | GPL v2 |

---

## About This Project

This project is a structured audit of Git, a free and open-source
distributed version control system created by Linus Torvalds in 2005.
The audit covers Git's origin, license, ethics, Linux footprint,
ecosystem, and a comparison with proprietary alternatives.

---

## Scripts

### Script 1 — System Identity Report
Displays a welcome screen showing the Linux distribution, kernel
version, logged-in user, home directory, uptime, and OS license.

**Run:**
```bash
chmod +x script1.sh
./script1.sh
```

---

### Script 2 — FOSS Package Inspector
Checks whether Git is installed, displays its version and license
info, and prints a philosophy note using a case statement.

**Run:**
```bash
chmod +x script2.sh
./script2.sh
```

---

### Script 3 — Disk and Permission Auditor
Loops through key system directories and reports their permissions,
owner, and disk usage. Also checks Git's config file.

**Run:**
```bash
chmod +x script3.sh
./script3.sh
```

---

### Script 4 — Log File Analyzer
Reads a log file line by line and counts occurrences of a keyword.
Prints a summary and the last 5 matching lines.

**Run:**
```bash
chmod +x script4.sh
./script4.sh /var/log/syslog error
```

**Arguments:**
- Argument 1: Path to any log file
- Argument 2: Keyword to search for (default is 'error')

---

### Script 5 — Open Source Manifesto Generator
Asks the user 3 interactive questions and generates a personalised
open source philosophy statement, saved to a .txt file.

**Run:**
```bash
chmod +x script5.sh
./script5.sh
```

---

## How to Run All Scripts
```bash
# Clone the repository
git clone https://github.com/thexcvenom-jpg/oss-audit-24BAI10837

# Navigate into the folder
cd oss-audit-24BAI10837

# Give execute permission to all scripts
chmod +x *.sh

# Run each script
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
```

---

## Dependencies

- Linux or WSL (Ubuntu 22.04 or 24.04 recommended)
- Bash 5.0 or above
- Git 2.0 or above
- dpkg (for Script 2 — available by default on Ubuntu)

---
