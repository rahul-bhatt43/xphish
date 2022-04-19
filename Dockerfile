FROM debian:latest
LABEL MAINTAINER="https://github.com/rahul-bhatt43/xphish"

WORKDIR /xphish/
ADD . /xphish

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./xphish.sh"]
