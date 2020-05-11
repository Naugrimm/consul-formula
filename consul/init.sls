{%- if pillar.get('consul', {}).get('enabled', True) %}
{% from tpldir+"/map.jinja" import consul with context %}

include:
  - {{ tpldir }}.install
  - {{ tpldir }}.config
  - {{ tpldir }}.service

{%- endif %}
