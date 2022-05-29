{%- set timezone = salt['pillar.get']('timezone:name', 'Etc/UTC') %}
{%- set utc = salt['pillar.get']('timezone:gmt', True) %}
timezone_settings:
  timezone.system:
    - name: {{ timezone }}
    - utc: {{ utc }}
