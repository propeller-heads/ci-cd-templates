image:
  repository: {{ requiredEnv "REPOSITORY_URL" | quote }}
  tag: {{ requiredEnv "IMAGE_TAG" | quote }}

service:
  enabled: true

ports:
  - name: http
    containerPort: 8000
    protocol: TCP

nodeSelector:
  defibot/node-type: gp

resources:
  limits:
    memory: 256Mi
  requests:
    cpu: 100m
    memory: 128Mi
