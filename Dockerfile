FROM python:3.11-slim as builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


FROM gcr.io/distroless/python3-debian12



WORKDIR /app

COPY --from=builder  /usr/local/lib/python3.11/site-packages /app/libraries
COPY main.py .
COPY diabetes_model.pkl .


ENV PYTHONPATH=/app/libraries




CMD ["-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


