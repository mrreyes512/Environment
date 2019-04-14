# (my)Environment: Mark Reyes

I like stuff. I like my stuff a certain way. Some may say that 300+ aliases and functions is too many... to those I say you haven't turely embraced life until you've given my lazy aliases a shot. If you don't like them, fine then... go away. If you have questions, or want to contribute, great.
This is s sharable role for setting up my environment.


## (my)Files

#### Aliases
Some may say that 300+ aliases and functions is too many... to those I say you haven't turely embraced life until you've given my lazy aliases a shot. If you don't like them, fine then... go away.
This file will be copied to the remote server under `~/.aliases` and added to `~/.bashrc` for loading when logging in.

#### Public SSH Key
My Public key so that I can log in without typing passwords... 'cause lazy. This file will be appended to `~/.ssh/authorized_keys`. 

#### VIM Config file
`~/.vimrc` will be loaded when vim is called. These are my shortcuts I use. I also use Vundle to install some vim packages... because i ride on the shoulders of giants and don't need to build everything from scratch. Molokia is a vim color scheme that is my preference and is also copied over to `~/.vim/colors/` 

#### ZSH Config file
ZSH is the best shell, convince me otherwise. I use Oh My ZSH to 'borrow' other people's cool shortcuts and plugins. This is to make sure my awesome configuration is carried over.


## Requirements

* [(my)Dotfiles role from Ansible Galaxy](https://galaxy.ansible.com/mrreyes512/dotfiles)


## Installation

1) Install Ansible roles from Galaxy
```bash
$ ansible-galaxy install -r requirements.yml -p roles
```


## (my)Playbooks

#### Freshen Up My Files
Get a fresh copy of local files into files...   
Executes on local box to get a fresh copy of (dot)files into files directory. The (dot)files targeted are: 

* ~/.aliases
* ~/.ssh/id_rsa.pub
* ~/.vimrc
* ~/.zshrc

```bash
$ ./plays/freshen_up
```

#### Send My Enviornment
A playbook to set up my enviornment on a remote host. The playbook will prompt the user for remote server's IP, User, and Password. A dynamic hosts file will be set from the collected varriables. 


```bash
$ ./plays/send_env
```

#### Set Hostname
Set the host name on the remote server


## License

BSD


## Author Information

* [Mark Reyes](mailto:mark.reyes@charter.com)
