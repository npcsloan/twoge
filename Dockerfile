FROM python:alpine
RUN apk update && \
    apk add --no-cache build-base libffi-dev
COPY . /app
WORKDIR /app
# RUN apt install dotenv
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./app.py