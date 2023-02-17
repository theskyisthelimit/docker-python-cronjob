FROM python:3.9
RUN apt-get update && apt-get -y install cron nano
RUN pip install --upgrade pip
RUN python3.9 -m pip install requests psycopg2-binary pytz
WORKDIR /app
COPY hello.py /app/hello.py
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# run the entrypoint.sh script as main process of container
CMD ["/entrypoint.sh"]
