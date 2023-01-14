FROM python:3.7-alpine

WORKDIR /app

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 2055

COPY . .

CMD ["python3", "-m", "netflow.wise_collector"]