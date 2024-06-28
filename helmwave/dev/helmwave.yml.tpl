project: "Newo release template"
version: "0.33.0"

releases:
  - name: {{ requiredEnv "APP_NAME"}}
    namespace: {{ env "NAMESPACE" | default "default" }}
    create_namespace: false
    wait: true
    timeout: 10m
    pending_release_strategy: rollback
    max_history: 3
    chart:
      name: ../../charts/common-chart
    values:
      - values/base/_common.yml.tpl
      - values/{{ requiredEnv "APP_NAME" }}.yml
