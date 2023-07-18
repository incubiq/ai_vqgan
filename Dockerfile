##
##      To build the AI_VQGAN docker image
##
FROM yeepeekoo/public:ai_vqgan_


# copy files
RUN mkdir -p ./static
RUN mkdir -p ./templates
RUN chown -R root:root ./static
RUN chown -R root:root ./templates

COPY ./_temp/static/* ./static
COPY ./_temp/templates/* ./templates
COPY ./_temp/osais.json .

COPY ./_temp/env_base .
COPY ./_temp/_base.py .
COPY ./_temp/main_fastapi.py .
COPY ./_temp/main_flask.py .
COPY ./_temp/main_common.py .
COPY ./_temp/osais_debug.py .

# prepare for mounting images
RUN mkdir -p ./_input
RUN mkdir -p ./_output
RUN chown -R root:root ./_input
RUN chown -R root:root ./_output

# copy an image for warmup test
COPY ./_temp/static/warmup.jpg ./_input/warmup.jpg

# overload config with those default settings
ENV USERNAME=3fbe53cba18a5c73c3b69421e4f44812460c2e55b7634a77006e54e3f5605a3b
ENV IS_LOCAL=False
ENV IS_VIRTUALAI=True
ENV DIR_STATIC=./static
ENV DIR_TEMPLATE=./templates

# AI
COPY ./ai/runai.py ./ai/runai.py
COPY ./vqgan.json .
COPY ./_vqgan.py .

# overload config with those default settings
ENV ENGINE=vqgan

# run as a server
CMD ["uvicorn", "main_fastapi:app", "--host", "0.0.0.0", "--port", "5101"]
