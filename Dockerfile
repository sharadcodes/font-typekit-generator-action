FROM openjdk:7
COPY entrypoint.sh /entrypoint.sh
COPY gen.py /gen.py
RUN  apt-get update \
  && apt-get install -y git \
  && apt-get install -y build-essential \
  && apt-get install -y maven \
  && apt-get install -y python3 \
  && apt-get install -y fontforge \
  && apt-get install -y tree \
  && rm -rf /var/lib/apt/lists/*
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
