FROM python:3
ENV PYTHONUNBUFFERED 1
#RUN mkdir /code
#WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app.py app.py
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 5000