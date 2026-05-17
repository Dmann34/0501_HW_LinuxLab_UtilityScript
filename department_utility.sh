#!/bin/bash

# ==============================
# Department File Utility Script
# ==============================

echo "Starting department organization script..."

# Show working directory
pwd

# Create directories
echo "Creating directories..."
mkdir -p departments/incoming
mkdir -p departments/archive
mkdir -p backup/temp

# Create sample files
echo "Creating sample files..."
touch departments/incoming/hr.txt
touch departments/incoming/finance.txt
touch departments/incoming/it.txt

# Add content to files
echo "HR data" > departments/incoming/hr.txt
echo "Finance data" > departments/incoming/finance.txt
echo "IT data" > departments/incoming/it.txt

# List incoming directory
ls -al departments/incoming

# Copy files to backup
echo "Backing up files..."
cp -v departments/incoming/*.txt backup/temp/

# Move one file to archive
echo "Archiving HR file..."
mv -v departments/incoming/hr.txt departments/archive/hr_archived.txt

# Remove temporary file example
echo "Removing temporary file..."
rm -i backup/temp/it.txt

# Generate report
REPORT="report.txt"

echo "Generating report..."

echo "===== Department Script Report =====" > $REPORT
echo "Run Date: $(date)" >> $REPORT
echo "" >> $REPORT

echo "Directories Created:" >> $REPORT
echo "departments/incoming" >> $REPORT
echo "departments/archive" >> $REPORT
echo "backup/temp" >> $REPORT

echo "" >> $REPORT
echo "Files Copied:" >> $REPORT
ls backup/temp >> $REPORT

echo "" >> $REPORT
echo "Files Archived:" >> $REPORT
ls departments/archive >> $REPORT

echo "" >> $REPORT
echo "Temporary Files Removed:" >> $REPORT
echo "it.txt removed from backup/temp" >> $REPORT

# Display report
cat $REPORT

echo "Script complete!"
