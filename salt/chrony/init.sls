chrony_package:
  pkg.installed:
    - name: chrony
  service.running:
    - name: chronyd
    - enable: True
 
