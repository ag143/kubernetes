cat > config <<EOF
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${{secrets.CERTIFICATE_AUTHORITY_DATA}}
    server: ${{secrets.server}}
  name: cloud_okteto_com
contexts:
- context:
    cluster: cloud_okteto_com
    namespace: ${{secrets.namespace}}
    user: ${{secrets.USER_OR_NAME}}
  name: cloud_okteto_com
current-context: cloud_okteto_com
kind: Config
preferences: {}
users:
- name: ${{secrets.USER_OR_NAME}}
  user:
    token: ${{secrets.USER_TOKEN}}
EOF
