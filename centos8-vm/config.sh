sudo yum update -y
sudo yum install -y python39
sudo yum install -y git
git config --global user.name "First Last"
git config --global user.email name@example.com
git config --global core.editor vim
echo "*** Creating virtual env for Ansible ***"
mkdir $HOME/venv
cd $HOME/venv
python3.9 -m venv ansible
source ansible/bin/activate
python -m pip install --upgrade pip
python -m pip install ntc-ansible
python -m pip install ansible
python -m pip install paramiko
deactivate
