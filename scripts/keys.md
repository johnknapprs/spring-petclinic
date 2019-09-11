


Steps:
1.  Get tools installed, get VM up, verify services running and find their addresses.
2.  `yum update` all packages, update Jenkins plugins/packages
3.  who is	sundeep bobba?
2.  Fork repository and get jobworking using the Fork
3.  Update curl/libcurl to allow for HTTPS connection of job to repository
4.  Install nano for comfort
5.  youm install node curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
6.  I did not branch during development
sudo  yum update

```SHELL
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
```

sudo yum install curl libcurl nano nodejs lsof ruby

sudo npm i -g smee-client

sudo nano /lib/systemd/system/smee.service

```SHELL
[Unit]
Description=smee
After=network.target

[Service]
ExecStart=/usr/bin/smee -u https://smee.io/smOl72stHgfFNnzY --path /github-webhook/ --port 8080
ExecReload=/bin/kill -HUP $MAINPID
KillMode=process
IgnoreSIGPIPE=true
Restart=always
RestartSec=3
Type=simple

[Install]
WantedBy=multi-user.target
```

sudo systemctl enable smee.service
sudo systemctl start smee.service
sudo systemctl status smee.service

- Maven pom.xml Junit library missing. Fixed by changing version to 1.2.  This needs improved.

- Added ruby to dependencys for a script that updates the pom.xml address to localhost when in CI.   Also has a development usecase.

- Nexus login admin & admin123
