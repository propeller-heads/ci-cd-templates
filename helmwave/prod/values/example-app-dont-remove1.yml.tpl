{{- $data := ( readFile "versions.yml" | fromYaml ) }}
image:
  repository: {{ index $data "example-app-dont-remove1" "repository" }}
  tag: {{ index $data "example-app-dont-remove1" "tag" }}

resources:
  limits:
    memory: 512Mi
  requests:
    cpu: 100m
    memory: 256Mi

nameOverride: example-app-dont-remove1
fullnameOverride: example-app-dont-remove1

