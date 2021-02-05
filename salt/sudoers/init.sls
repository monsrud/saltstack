# install a generic sudoers file
/etc/sudoers:
  file.managed:
    - source:
      - 'salt://sudoers/files/sudoers'
    - mode: 440 
    - user: root
    - group: root

