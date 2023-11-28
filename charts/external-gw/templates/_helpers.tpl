{{/* vim: set filetype=mustache: */}}

{{- define "chart.name" -}}
{{- .Values.name | default .Chart.Name -}}
{{- end -}}

{{- define "chart.hosts" -}}
{{- if gt (len .Values.hosts) 0 -}}
{{ .Values.hosts | required "hosts are required" | toYaml }}
{{- else -}}
{{ required "hosts are required" "" }}
{{- end -}}
{{- end -}}

{{- define "chart.certificate.name" -}}
{{- .Values.certificate.name | default (include "chart.name" .) -}}
{{- end -}}

{{- define "chart.certificate.secret" -}}
{{- printf "%s-tls-secret" (include "chart.certificate.name" .) | trunc 63 -}}
{{- end -}}

{{- define "chart.gateway.name" -}}
{{- .Values.gateway.name | default (include "chart.name" .) -}}
{{- end -}}

{{- define "chart.service.name" -}}
{{- .Values.service.name | default (include "chart.name" .) -}}
{{- end -}}