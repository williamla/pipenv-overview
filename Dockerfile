FROM python:3.6-alpine

RUN apk --no-cache add bash git

WORKDIR /training
COPY training .
COPY reference /reference
ENV ENV="/root/.ashrc"
RUN echo "cat /reference/startup.txt" > "$ENV"

CMD ["ash"]
