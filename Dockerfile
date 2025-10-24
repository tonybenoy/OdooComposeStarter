FROM odoo:18.0

USER root
RUN apt-get update && apt-get install -y --no-install-recommends python3-pip gcc python3-dev

RUN pip3 install -r requirements.txt
RUN apt-get remove -y python3-pip gcc python3-dev
USER odoo
