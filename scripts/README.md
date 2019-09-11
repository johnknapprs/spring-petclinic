# Getting Started

### Setup Environment:

1. Install Vagrant: https://www.vagrantup.com/
2. Install VirtualBox: https://www.virtualbox.org/
3. Create GitHub Account
4. Create https://smee.io service

### VM Box Service Information

Locations of VM Services
- Jenkins: http://192.168.33.10:8080
- Nexus: http://192.168.33.10:8081/nexus/

### Repositories to Fork

Main Project Spring-PetClinic
- https://github.com/piousbox/spring-petclinic

JUnit4 Dependency
- https://github.com/junit-team/junit4

### Start Virtual Machine

```SHELL
# Start VM Box using Vagrant
vagrant up --provision

# Set smee.io service to start at boot
vagrant ssh

# Create a systemd service file
# Paste contents of `smee_setup/smee.service`
sudo nano /lib/systemd/system/smee.service

# Enable Service
sudo systemctl enable smee.service

# Start service
sudo systemctl enable smee.service
```

### Jenkins Job Setup

[Read how to setup Pipeline jobs in Jenkins](jenkins.md)
