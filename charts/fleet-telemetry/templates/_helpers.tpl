{{/*
Common enterprise labels applied to all resources
*/}}
{{- define "fleet-telemetry.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/part-of: fleet-system
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels used by Deployment, Service, HPA, and PDB
*/}}
{{- define "fleet-telemetry.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- end -}}
