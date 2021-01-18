{% if grains['virtual'] == 'physical' %}
chrony_package:
  pkg.installed:
    - name: chrony
  service.running:
    - name: chronyd
    - enable: True

/etc/chrony/chrony.conf:
  file.managed:
    - source:
      - 'salt://chrony/files/chrony.conf'
{% endif %} 


#Etc/UTC:
#  timezone.system:
#    - utc: True
