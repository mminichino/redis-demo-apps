{{- define "redis-apps.domain" -}}
{{- .Values.cluster.values.dns.domain -}}
{{- end -}}
