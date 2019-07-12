FROM "ubuntu:18.04"

RUN apt-get update && apt-get install -y \
  python \
  python-pip

RUN pip install ansible-lint

# Let ansible-lint initialize all dirs
RUN ansible-lint -h > /dev/null
