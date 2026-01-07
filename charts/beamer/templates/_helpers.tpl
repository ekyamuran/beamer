{{- define "ts-microservice.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "ts-microservice.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "ts-microservice.labels" -}}
app.kubernetes.io/name: {{ include "ts-microservice.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
