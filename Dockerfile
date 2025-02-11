FROM python:3.9-alpine
COPY . .
RUN pip3 install -r requirements.txt
RUN pip install django-filters

EXPOSE 5050

CMD ["python", "manage.py", "runserver", "0.0.0.0:5050"]