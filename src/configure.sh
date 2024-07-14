#!/bin/bash

echo -n "Run zyme after installation? Yes or No: "
read run
echo "setting up zyme"
make zyme
sudo mv zyme /usr/local/bin
sudo chmod +x /usr/local/bin/zyme
if [ "$run" = "Yes" ]; then
    zyme
else
    echo "Zyme is installed. Run 'zyme' to start"
fi
