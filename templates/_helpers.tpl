{{/* Define the full name of the application */}}
{{- define "myapp.fullname" -}}
{{- .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{/* Define the name of the application */}}
{{- define "myapp.name" -}}
{{- .Chart.Name }}
{{- end -}}

{{/* Define common labels for the application */}}
{{- define "myapp.labels" -}}
app.kubernetes.io/name: {{ include "myapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
app.kubernetes.io/component: {{ .Values.component | default "app" }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
{{- end -}}
