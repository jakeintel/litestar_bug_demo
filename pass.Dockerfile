FROM python:3.12.3-slim-bookworm

ENV PYTHONUNBUFFERED=1

WORKDIR /application

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY litestar_bug ./litestar_bug

CMD ["uvicorn", "litestar_bug.app:app", "--port", "8080", "--host", "0.0.0.0"]