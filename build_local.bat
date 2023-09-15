

# =========================================
#     build and push docker image
# =========================================

cp ../osais_ai_base/main_common.py ./_temp/
cp ../osais_ai_base/main_fastapi.py ./_temp/
cp ../osais_ai_base/main_flask.py ./_temp/
cp ../osais_ai_base/osais_debug.py ./_temp/
cp ../osais_ai_base/osais.json ./_temp/
cp ../osais_ai_base/env_base ./_temp/
cp -r ../osais_ai_base/static ./_temp/static
cp -r ../osais_ai_base/templates ./_temp/templates

cp ../osais_ai_base/cloudflared_cert.pem ./_temp/

cp ./Dockerfile_vqgan ./Dockerfile

docker build -t yeepeekoo/public:ai_vqgan .
