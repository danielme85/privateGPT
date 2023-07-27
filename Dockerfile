FROM python:3.10.11
FROM wallies/python-cuda:3.10-cuda11.6-runtime

WORKDIR /app
ARG LLAMA_CMAKE
RUN pip install -r requirements.txt
RUN pip install sentence_transformers

ENTRYPOINT ["tail", "-f", "/dev/null"]