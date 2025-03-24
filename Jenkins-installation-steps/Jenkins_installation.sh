sudo curl -o /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
#sudo dnf upgrade
# Add required dependencies for the jenkins package
sudo dnf install fontconfig java-17-openjdk -y
sudo dnf install jenkins -y
sudo systemctl daemon-reload
sudo systemctl start jenkins &&
sudo systemctl enable jenkins


##In Agent Java should be installed
#sudo dnf install fontconfig java-17-openjdk -y