FROM odoo:12.0

USER root
RUN apt-get update && apt-get install -y --no-install-recommends python3-pip gcc python3-dev

RUN pip3 install wheel
RUN pip3 install pycrypto==2.6.1
RUN apt-get remove -y python3-pip gcc python3-dev
USER odoo