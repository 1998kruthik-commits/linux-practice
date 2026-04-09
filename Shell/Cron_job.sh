#1/bin/bash

# Function to check disk size
check_disk() {
    # Get disk usage
    df -h > size.txt
    
    # Create directory if not exists
    mkdir -p /home/kruthik/Desktop/Devops/Shell/disk_reports
    
    # Move file to directory
    mv size.txt /home/kruthik/Desktop/Devops/Shell/disk_reports
    
    echo "Disk size saved and moved successfully"
}

# Call function
check_disk
