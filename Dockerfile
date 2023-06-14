FROM python:3.9
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

EXPOSE 5000
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]