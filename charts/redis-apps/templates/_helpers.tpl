{{- define "redis-apps.domain" -}}
{{- $secret := (lookup "v1" "Secret" .Release.Namespace "cluster-settings") -}}
{{- if $secret -}}
{{ index $secret.data "domain" | b64dec }}
{{- else -}}
{{ .Values.cluster.values.dns.domain }}
{{- end -}}
{{- end -}}
