{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "grafana-plugin-installer.name" -}}
{{- printf "%s-%s" .Values.plugin.name .Chart.Name -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "grafana-plugin-installer.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "grafana-plugin-installer.labels" -}}
app.kubernetes.io/name: {{ include "grafana-plugin-installer.name" . }}
helm.sh/chart: {{ include "grafana-plugin-installer.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
