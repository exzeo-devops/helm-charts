# argocd-apps

![Version: 0.1.19](https://img.shields.io/badge/Version-0.1.19-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

**Homepage:** <https://github.com/exzeo-devops/helm-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| exzeo-devops |  | <https://exzeo-devops.github.io/> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| applications | list | `[]` |  |
| default.pathPrefix | string | `""` |  |
| default.source.repoURL | string | `""` |  |
| default.syncPolicy.automated.prune | bool | `true` |  |
| default.syncPolicy.automated.selfHeal | bool | `true` |  |
| default.syncPolicy.syncOptions.createNamespace | bool | `true` |  |

