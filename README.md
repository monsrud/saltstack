


# Install Saltstack 

These instructions assume firewalls have been disabled on the master/minions.
Ports can also be opened
https://docs.saltproject.io/en/latest/topics/tutorials/firewall.html

On the master, set the hostname to salt. Add an entry for this host in /etc/hosts.

On all minions, set the hostname to something unique. 

On the master and minions, run the following commands:
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -P -M -x python3

Make sure the salt-master service is stopped/disabled on all minions.
If /etc/salt/minion-id contains an IP address, set it to the hostname of the minion.
Make sure the salt-minion service is enabled an running on all minions.
Add an entry for the hostname/IP of the salt server in /etc/hosts on all minions.


Verify the minons are reachable:

root@salt:~# salt-key -L
Accepted Keys:
Denied Keys:
Unaccepted Keys:
salt
minion1
minion2
minion3
...


Accept the keys from the minions:

root@salt:~# salt-key -A
The following keys are going to be accepted:
Unaccepted Keys:
salt
minion1
minion2
minion3
Proceed? [n/Y] y       
Key for minion salt accepted.
Key for minion minion1 accepted.
Key for minion minion2 accepted.
Key for minion minion3 accepted.


root@salt:~# salt "*" test.ping
minion1:
    True
minion2:
    True
minion3:


## List available grains on minions
salt "*" grains.items
    True

## Run a command on all minions

salt "*" cmd.run ... some command


## make a state file

Salt's default is that state files go in /srv/salt.

mkdir /srv/salt

mkdir /srv/salt/packages

create a file in /srv/salt/packages called init.sls
aput the following contents in it.

packages:
  pkg.installed:
    - pkgs:
      - curl
      - wget

Run the following command in /srv/salt:

salt '*' state.sls packages

Salt has execution modules and state modules.

TODO: study events, reactors and overstate. Also look at the salt bootstrap script.

 look at 

- salt.states.file
- salt.states.append
- salt.states.directory
- salt.states.highstate


test.version 

Devops Library SaltStack Training

#refresh pillar
salt-call saltutil.refresh_pillar

# set state
salt '*' state.apply


The Salt master uses ports 4505 and 4506, which must be opened to accept incoming connections. (port 4505) All Salt minions establish a persistent connection to the publisher port where they listen for messages.



Training:

Salt Documentation https://docs.saltproject.io/en/latest/contents.html

Udemy: Learning Salt by Packt Publishing  also https://www.packtpub.com/product/learning-salt-video/9781785884368
