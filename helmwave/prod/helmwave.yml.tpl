project: "Release template"
version: "0.37.1"

.options: &options
  wait: true
  timeout: 10m
  create_namespace: false
  pending_release_strategy: rollback
  max_history: 3
  chart:
    name: ../../charts/common-chart
  values:
    - base/_common.yml.tpl

releases:
  - name: example-app-dont-remove1
    namespace: default
    <<: *options
    values:
      - values/example-app-dont-remove1.yml.tpl
  - name: example-app-dont-remove2
    namespace: default
    <<: *options
    values:
    - values/example-app-dont-remove2.yml.tpl