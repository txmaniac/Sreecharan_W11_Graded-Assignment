FROM python:3.10

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./model /app/model
COPY ./ms /app/ms
COPY app.py /app/app.py
CMD ["flask", "run", "--host", "0.0.0.0", "-p", "5000"]