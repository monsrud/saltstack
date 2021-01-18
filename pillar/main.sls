
user_list:
  [
    {
    'name':'lab',
    'shell':'/bin/bash',
    'group':'lab',
    'ssh_public_key': '',
    'password': '$6$V00KPTU4$N.SaV5Zjk7nx6CWkmfAL.5HqERWXI9aHDfiSKwOzV.4bg3tRLyLZFpgB7hfvQdRlXfFhvw02hy13GTWGfkj.6.'
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
