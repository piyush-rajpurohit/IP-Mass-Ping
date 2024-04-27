@echo off
setlocal enabledelayedexpansion

set INPUT_FILE=C:\path\of\address.txt
set OUTPUT_CSV=C:\path\of\output.csv

if not exist "%INPUT_FILE%" (
    echo Input file "%INPUT_FILE%" not found.
    exit /b 1
)

echo Pinging IPs from %INPUT_FILE%...

REM Creating CSV file with headers
echo "IP Address","Status" > "%OUTPUT_CSV%"

for /f "tokens=*" %%a in (%INPUT_FILE%) do (
    set IP=%%a
    echo Pinging !IP!...
    
    REM Run the ping command and capture the result
    set "Status=Down"
    ping -n 1 !IP! | find "Reply" > nul && set "Status=Up"
    echo "!IP!","!Status!" >> "%OUTPUT_CSV%"
    
    if "!Status!"=="Down" echo Down IP: !IP!
)

echo Pinging complete. Results saved to "%OUTPUT_CSV%".
