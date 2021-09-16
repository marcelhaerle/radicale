FROM python:3.9-alpine
MAINTAINER "Marcel Härle <marcel.haerle@sonnvest.de>"

RUN apk \
    --update \
    --no-cache \
    --virtual build-dependencies \
    add apache2-utils

RUN python -m pip install radicale

EXPOSE 5232

COPY start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]
