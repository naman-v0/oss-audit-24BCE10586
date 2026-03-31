# oss-audit-24BCE10586

## The Open Source Audit — Capstone Project

**Course:** Open Source Software (OSS NGMC)  
**Student Name:** Naman Choudhary  
**Registration Number:** 24BCE10586  
**Chosen Software:** Git — Distributed Version Control System  
**License:** GNU General Public License v2 (GPL v2)  

---

## About This Project

This repository is the technical submission for the Open Source Audit capstone project. It contains five shell scripts that demonstrate practical Linux skills, each connected to the themes covered across Units 1–5 of the Open Source Software course.

The accompanying project report (submitted separately as a PDF on the VITyarthi portal) provides a full written analysis of Git across four parts:
- **Part A** — Origin story, licence analysis, and ethical reflection
- **Part B** — Git's Linux footprint (installation, directories, user/group, service management)
- **Part C** — The FOSS ecosystem (dependencies, what Git has enabled, community governance)
- **Part D** — Open source vs proprietary comparison (Git vs Perforce Helix Core)

---

## Repository Structure

```text
oss-audit-24BCE10586/
├── README.md               ← This file
├── script1_sysid.sh        ← System Identity Report
├── script2_pkginspect.sh   ← FOSS Package Inspector
├── script3_diskaudit.sh    ← Disk and Permission Auditor
├── script4_loganalyzer.sh  ← Log File Analyzer
└── script5_manifesto.sh    ← Open Source Manifesto Generator
# oss-audit-24BCE10586

## The Open Source Audit — Capstone Project

**Course:** Open Source Software (OSS NGMC)  
**Student Name:** Naman Choudhary  
**Registration Number:** 24BCE10586  
**Chosen Software:** Git — Distributed Version Control System  
**License:** GNU General Public License v2 (GPL v2)  

---

## About This Project

This repository is the technical submission for the Open Source Audit capstone project. It contains five shell scripts that demonstrate practical Linux skills, each connected to the themes covered across Units 1–5 of the Open Source Software course.

The accompanying project report (submitted separately as a PDF on the VITyarthi portal) provides a full written analysis of Git across four parts:
- **Part A** — Origin story, licence analysis, and ethical reflection
- **Part B** — Git's Linux footprint (installation, directories, user/group, service management)
- **Part C** — The FOSS ecosystem (dependencies, what Git has enabled, community governance)
- **Part D** — Open source vs proprietary comparison (Git vs Perforce Helix Core)

---

## Repository Structure

```text
oss-audit-24BCE10586/
├── README.md               ← This file
├── script1_sysid.sh        ← System Identity Report
├── script2_pkginspect.sh   ← FOSS Package Inspector
├── script3_diskaudit.sh    ← Disk and Permission Auditor
├── script4_loganalyzer.sh  ← Log File Analyzer
└── script5_manifesto.sh    ← Open Source Manifesto Generator
________________________________________
Script Descriptions
Script 1 — script1_sysid.sh — System Identity Report
What it does: Produces a formatted welcome screen that summarises the current Linux environment. Displays the kernel version, Linux distribution name, currently logged-in user, home directory, system uptime, current date and time, and a message about the OS licence.
Shell concepts used: - Variables (assignment and reference)
•	Command substitution using $()
•	uname, whoami, uptime, date, /etc/os-release
•	Formatted output with echo
Unit coverage: Units 1 & 2
________________________________________
Script 2 — script2_pkginspect.sh — FOSS Package Inspector
What it does: Detects whether the system uses RPM or DEB package management, checks whether Git is installed, retrieves its version and licence metadata, and uses a case statement to print a philosophy note about the detected package.
Shell concepts used: - if-then-else conditional logic
•	case statement
•	rpm -qi and dpkg -l for package metadata
•	Pipe with grep to filter output
•	command -v to detect available tools
Unit coverage: Unit 2
________________________________________
Script 3 — script3_diskaudit.sh — Disk and Permission Auditor
What it does: Iterates over a predefined list of important Linux system directories using a for loop. For each directory, reports the permissions, owner, group, and disk usage. Also checks whether Git's configuration directory exists and prints its permissions.
Shell concepts used: - for loop with array
•	ls -ld for permission inspection
•	du -sh for disk usage
•	awk and cut for field extraction
•	[ -d ] directory existence test
Unit coverage: Unit 2
________________________________________
Script 4 — script4_loganalyzer.sh — Log File Analyzer
What it does: Accepts a log file path and optional keyword as command-line arguments. Reads the file line by line using a while read loop, counts how many lines contain the keyword (case-insensitive), prints a summary count, and displays the last 5 matching lines. Also warns if the log file is empty.
Shell concepts used: - while IFS= read -r loop
•	Command-line arguments ($1, $2)
•	Counter variables and arithmetic ($(( )))
•	grep -iq for case-insensitive search
•	tail for last-n-lines output
•	[ -f ] and [ -s ] file tests
Unit coverage: Units 2 & 5
________________________________________
Script 5 — script5_manifesto.sh — Open Source Manifesto Generator
What it does: Prompts the user with three interactive questions using read, then composes a personalised open-source philosophy paragraph by concatenating the answers with fixed text. Saves the result to a .txt file named after the current user and displays it in the terminal.
Shell concepts used: - read for interactive user input
•	String concatenation (+=)
•	File redirection (> to create/clear, >> to append)
•	date command for timestamp
•	$(whoami) for dynamic filename
•	Comment demonstrating the alias concept
Unit coverage: Unit 5
________________________________________
How to Run the Scripts on Linux
Prerequisites
•	A Linux system (physical machine, virtual machine, or WSL2 on Windows)
•	Bash shell (pre-installed on all major distributions)
•	Git installed (required for Script 2): sudo apt install git or sudo dnf install git
•	A log file for Script 4 (e.g., /var/log/syslog on Debian/Ubuntu or /var/log/messages on RHEL/Fedora)
Step 1 — Clone the Repository
Bash
git clone https://github.com/naman-v0/oss-audit-24BCE10586.git
cd oss-audit-24BCE10586
Step 2 — Make Scripts Executable
Bash
chmod +x script1_sysid.sh
chmod +x script2_pkginspect.sh
chmod +x script3_diskaudit.sh
chmod +x script4_loganalyzer.sh
chmod +x script5_manifesto.sh
Step 3 — Run Each Script
Script 1 — System Identity Report:
Bash
./script1_sysid.sh
Script 2 — FOSS Package Inspector:
Bash
./script2_pkginspect.sh
Script 3 — Disk and Permission Auditor:
Bash
./script3_diskaudit.sh
Script 4 — Log File Analyzer:
Bash
# Basic usage (searches for 'error' by default)
./script4_loganalyzer.sh /var/log/syslog

# With a custom keyword
./script4_loganalyzer.sh /var/log/syslog "warning"

# On RHEL/Fedora systems
./script4_loganalyzer.sh /var/log/messages "error"
Script 5 — Open Source Manifesto Generator:
Bash
./script5_manifesto.sh
# Follow the three interactive prompts
# Output is saved to: manifesto_<yourusername>.txt
________________________________________
Dependencies
Script	External Dependencies
script1_sysid.sh	uname, whoami, uptime, date, /etc/os-release — all standard on any Linux system
script2_pkginspect.sh	rpm (RPM systems) or dpkg (DEB systems); git must be installed to show version
script3_diskaudit.sh	ls, du, awk, cut — all standard GNU coreutils
script4_loganalyzer.sh	grep, tail — standard on all Linux systems; a readable log file
script5_manifesto.sh	date, whoami — standard on all Linux systems
No third-party libraries or root privileges are required to run any script.
________________________________________
Academic Integrity Statement
All shell scripts in this repository are original work written by Naman Choudhary. The project report submitted separately on the VITyarthi portal is written entirely in the student's own words. No code has been copied from the internet without attribution and understanding. No AI tool was used to generate the report text.
________________________________________
References
•	GNU Project — The Free Software Definition: https://www.gnu.org/philosophy/free-sw.html
•	Chacon, S. & Straub, B. — Pro Git (freely available): https://git-scm.com/book/en/v2
•	Shotts, W. — The Linux Command Line: https://linuxcommand.org
•	Open Source Initiative: https://opensource.org/osd
•	SPDX GPL-2.0 Licence: https://spdx.org/licenses/GPL-2.0-only.html
•	Git official site: https://git-scm.com



