cat > config <<EOF
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data:
    server: ${{ server }}
  name: cloud_okteto_com
contexts:
- context:
    cluster: cloud_okteto_com
    namespace: 
    user:
  name: cloud_okteto_com
current-context: cloud_okteto_com
kind: Config
preferences: {}
users:
- name: 
  user:
    token: 
EOF
