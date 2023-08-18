{{- define "common.metadata" }}
metadata:
  name: {{ include "common.fullname" . }}
  labels:
    helm.sh/chart: {{ include "common.chart" . }}
    app.kubernetes.io/managed-by: {{ .Release.Service }}
  {{- include "common.selectorLabels" . | nindent 4 }}
  {{ end -}}