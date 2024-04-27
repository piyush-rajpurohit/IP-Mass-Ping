# IP Mass Ping

## Overview

This script allows you to ping a list of IP addresses to determine if they are up or down. It creates an output CSV file that shows the status of each IP address.

## Usage

 **Place IP Addresses:**
   - Add all the IP addresses you want to scan in the `addresses.txt` file. Each IP address should be on a separate line.
(**Note:**
Ensure that you have a file named `addresses.txt` containing the list of IP addresses you want to scan. The `addresses.txt` file should be in same folder as the script.)


 **For Windows:**
   - Run the batch file [pingip.bat](pingip.bat).
   - The script will scan each IP address and generate an output CSV file named `output.csv`.
   - Open `output.csv` to view the status of each IP address (up or down).

 **For Linux:**
   - Run the shell script [pingip](pingip) by executing `./pingip` in the terminal.
   - The script will scan each IP address and generate an output CSV file named `output.csv`.
   - Open `output.csv` to view the status of each IP address (up or down).

## Notes

- The script uses ping to check the status of each IP address. Ensure that ICMP echo requests are not blocked by firewalls.
- Ensure appropriate permissions to run the script and access network resources.
- For Linux users, make sure the shell script has execute permissions (`chmod +x scan_ips.sh`).

## Usage for SOC and VAPT Teams

This script is invaluable for SOC (Security Operations Center) teams and VAPT (Vulnerability Assessment and Penetration Testing) professionals when scanning a large number of IP addresses. It efficiently determines active IP addresses, optimizing resources and time for security assessments.

## Benefits

- **Resource Optimization:** Focuses scanning efforts on active IP addresses, reducing overhead.
- **Time Efficiency:** Quickly identifies active IP addresses, speeding up assessments.
- **Risk Mitigation:** Reduces exposure to threats by promptly identifying active IPs.
- **Customization:** Easily customizable to suit specific security requirements.
