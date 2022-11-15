#!/usr/bin/env bash
# Install kubectl
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install kube-ps1
(
    cd /home/vscode
    git clone https://github.com/jonmosco/kube-ps1.git

    sudo bash -c 'cat > /usr/local/bin/kube-ps1.sh' << 'EOF'
#!/usr/bin/env bash
source /home/vscode/kube-ps1/kube-ps1.sh
PS1='[\u@\h \W $(kube_ps1)]\$ '
EOF
    sudo chmod +x /usr/local/bin/kube-ps1.sh
)

# Install kubech
(
    cd /home/vscode
    git clone https://github.com/aabouzaid/kubech.git /home/vscode/.kubech
    echo 'source ~/.kubech/kubech' >> /home/vscode/.bashrc
)