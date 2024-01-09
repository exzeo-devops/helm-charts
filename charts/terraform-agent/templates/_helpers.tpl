{{/* vim: set filetype=mustache: */}}

{{/* short name of the application */}}
{{- define "charts.name" -}}
{{- .Values.nameOverride | default .Release.Name | lower | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* time */}}
{{- define "release.timestamp" -}}
{{- now | unixEpoch | quote -}}
{{- end -}}

{{- define "release.date" -}}
{{- now | date "2006-01-02" | quote -}}
{{- end -}}
