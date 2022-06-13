FROM python:3.7.13

WORKDIR /scraper

RUN pip install requests \
    mysql-connector-python \
    sqlalchemy \
    pandas \
    lxml \
    regex \
    jupyterlab

EXPOSE 8888

COPY ./wikiscraper.ipynb /scraper
COPY ./to_db.ipynb /scraper

CMD ["jupyter-lab", "--no-browser", "--ip=0.0.0.0", "--allow-root"]