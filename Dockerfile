FROM python:3.8
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY . .
RUN pip install cantools
CMD ["python", "./examples/dbc_io/main.py" ]
#CMD ["make", "test" ]