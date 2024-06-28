{{- $data := ( readFile "versions.yml" | fromYaml ) }}
image:
  repository: {{ $data.example_app_dont_remove1.repository }}
  tag: {{ $data.example_app_dont_remove1.tag }}

resources:
  limits:
    memory: 512Mi
  requests:
    cpu: 100m
    memory: 256Mi

nameOverride: example-app-dont-remove2
fullnameOverride: example-app-dont-remove2
