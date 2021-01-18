
{% for user in pillar['user_list'] %}
{{ user.name }}:
  user.present:
    - name: {{ user.name }}
    - shell: {{ user.shell }}
    - password: {{ user.password }}

#  file.managed:
#    - name: /etc/sudoers.d/{{ user.name }}
#    - contents: |
#        {{ user.name }} ALL=(ALL)  NOPASSWD: ALL
{% endfor %}


