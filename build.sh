APPS_JSON_BASE64=$(base64 < ./apps.json | tr -d '\n')

docker build \
  --build-arg=FRAPPE_PATH=https://github.com/frappe/frappe \
  --build-arg=FRAPPE_BRANCH=version-15 \
  --build-arg=APPS_JSON_BASE64=$APPS_JSON_BASE64 \
  --tag=ds5105119/frappe \
  --file=frappe_docker/images/layered/Containerfile .
