# ansible_dev
ansible config for dev environment

```sh
docker build -t ansible-testing .
docker run -it --rm ansible-testing bash

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
sudo ansible-pull -U https://github.com/stijnVanHorenbeek/ansible_dev.git
```
