FROM python:3.12.6

WORKDIR /app
RUN apt-get update

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python", "app.py" ]