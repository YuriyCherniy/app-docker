FROM python:3.13.2-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

COPY . ./

RUN chmod 755 entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
