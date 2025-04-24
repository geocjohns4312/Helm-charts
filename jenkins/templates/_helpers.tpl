{{/*
Generate the full name of the resource by combining the release name and the chart name.
*/}}
{{- define "jenkins.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate a shorter name for the resource, typically just the chart name.
*/}}
{{- define "jenkins.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Generate labels for resources to ensure consistency.
*/}}
{{- define "jenkins.labels" -}}
app.kubernetes.io/name: {{ include "jenkins.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}