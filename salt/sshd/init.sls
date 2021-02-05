sshd_package:
  pkg.installed:
    - name: openssh-server

{% if grains['os'] == 'Ubuntu' %}
ssh:
  service.running:
    - enable: True
    - reload: True

{% elif grains['os'] == 'Alpine' %}
sshd:
  service.running:
    - enable: True
    - reload: True
{% endif %}

/etc/ssh/sshd_config:
  file.managed:
    - source:
      - 'salt://sshd/files/sshd_config'
    - user: root
    - mode: 600


# TODO: install keys for specific users in pillar file
