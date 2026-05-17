# 0501_HW_LinuxLab_UtilityScript

## Workplace Scenario

In this scenario, I am working as a junior systems administrator responsible for organizing department files on a Linux server. Departments regularly upload files, and my task is to automate organization, backup creation, archiving, and reporting using a Bash utility script.

---

## What the Script Does

The script simulates incoming department data and automatically:

- Creates required directory structures
- Generates sample department files
- Copies files into a backup location
- Moves archived files
- Removes temporary files
- Produces a report summarizing all actions performed

---

## Linux Commands Used

### mkdir
Creates directories needed for file organization.

### touch
Creates sample files representing department uploads.

### echo
Displays messages and writes content into files and reports.

### cp
Copies department files to a backup folder.

### mv
Moves and renames archived files.

### rm
Removes temporary files after processing.

### ls
Displays directory contents.

### pwd
Shows the current working directory.

### date
Adds timestamp information to the report.

### cat
Displays the final report in the terminal.

---

## Why These Commands Were Useful

These commands automate common system administration tasks such as file management, backups, cleanup operations, and reporting. Automation reduces manual work and ensures consistency across departments.

---

## How to Run the Script

1. Clone the repository:

2. Navigate into folder:

3. Make script executable:

4. Run script:
./department_utility.sh


---

## Output

The script generates:

- Organized department folders
- Backup copies
- Archived files
- A report.txt file summarizing operations
