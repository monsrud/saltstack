
user_list:
  [
    {
    'name':'lab',
    'shell':'/bin/sh',
    'group':'lab',
    'ssh_public_key': '',
    'password': '$6$v55sJXEO$JSjfTrRt9RhT627taKzL53g9xyhUF3MLQmEPFAe66d/e7WoFLZ8C08qyvSbrYol6YSW.lbVMk/q5rnTYo5EE91'
    }
  ]


#packages:
#  recommended:
#{% if grains['os_family'] == 'RedHat' and grains['osmajorrelease'] == '7' %}
#    - iperf3
#    - python2-pip
#    - chrony
#{% elif grains['os_family'] == 'RedHat' and grains['osmajorrelease'] == '6' %}
#    - python-pip
#    - pdsh
#    - ntp
#{% endif %}
#    - bc
#    - bind-utils
#    - bonnie++
