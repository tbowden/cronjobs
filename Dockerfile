FROM alpine:latest

ADD cronjob .


RUN chmod 644 cronjob

RUN crontab cronjob

CMD ["crond", "-f"]
