cat > config <<EOF
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${CERTIFICATE_AUTHORITY_DATA}
    server: ${server}
  name: cloud_okteto_com
contexts:
- context:
    cluster: cloud_okteto_com
    namespace: ${namespace}
    user: ${USER_OR_NAME}
  name: cloud_okteto_com
current-context: cloud_okteto_com
kind: Config
preferences: {}
users:
- name: ${USER_OR_NAME}
  user:
    token: ${USER_TOKEN}
EOF
