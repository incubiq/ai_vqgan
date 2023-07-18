
Origin: https://github.com/nerdyrodent/VQGAN-CLIP
In addition to our code, the ai/ directory should contain the full content of the github repo above

// how to run it locally WITH FLASK 
$env:FLASK_APP="../osais_ai_base/main_flask"
python -m flask run --host=0.0.0.0 --port=5101

// how to run it alongside a GATEWAY
docker run -d --name ai_vqgan --gpus all --publish 5101:5101 --env-file env_docker_local yeepeekoo/public:ai_vqgan
