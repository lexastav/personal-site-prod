FROM python:3.10-slim

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py collectstatic --noinput


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
