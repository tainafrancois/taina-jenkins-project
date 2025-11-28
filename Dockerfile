FROM python:3.9
COPY taina.py /app/taina.py
CMD ["python", "/app/taina.py"]