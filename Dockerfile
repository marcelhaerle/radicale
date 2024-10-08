FROM python:3.12-alpine
LABEL org.opencontainers.image.authors="marcel.haerle@sonnvest.de"

RUN apk \
    --update \
    --no-cache \
    --virtual build-dependencies \
    add apache2-utils

RUN python -m pip install bcrypt radicale==3.2.3

EXPOSE 5232

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/bin/sh", "/start.sh"]

