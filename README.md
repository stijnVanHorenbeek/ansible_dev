# ansible_dev

ansible config for dev environment

```sh
docker build -t ansible-testing .
docker run -it --rm ansible-testing bash
```

```sh
sudo add-apt-repository --yes --update ppa:ansible/ansible && \
sudo apt install ansible -y && \
sudo ansible-pull -U https://github.com/stijnVanHorenbeek/ansible_dev.git
```

manual steps

```sh
gh auth login
```
