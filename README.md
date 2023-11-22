# AUTOMATION

# SCRIPT

### Write script in bashrc
    #!/bin/bash

    touch auto_out.txt

    echo "This is my Script, which is executed after boot" >> auto_out.txt

    if [ $auto_out.txt==true ];

    then

    echo "auto.txt"

    else

    echo "auto.txt not Exist"

    fi

    file=/home/test/18.11/auto.sh

    if [ -e "$file" ]; then
 
    if [ -x "$file" ]; then
  
     "$file"
  
    echo "file executed"
  
    else
  
    echo "file not executable"
 
    fi

    else

     echo "file not exist"

    fi

### Save this file and make it executable.

    sudo chmod +x file_name

### After that create service in (/etc/systemd/system/) location (myservice.service).

     cd /etc/systemd/system/

     sudo nano myservice.service

[Unit]

Description=myscript

[Service]

ExecStart=/usr/local/bin/bashrc

Type=simple

Restart=always

RestartSec=2

[Install]

WantedBy=default.target


### Enable these services 
 
    sudo systemctl daemon-reload
    sudo systemctl enable service_name

### Start Services

    sudo systemctl start service_name

### If you want to Check Status 
 
    sudo systemctl Status Service_name

### If status show (activating) then reboot your system.
  
    sudo reboot
### Check your output file to verify script is runnig after booting or not.
  

 
 

 
