FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    xrdp \
    dbus-x11 \
    sudo \
    curl \
    wget \
    git \
    nano \
    vim \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create root password
RUN echo "root:root" | chpasswd

RUN mkdir -p /run/dbus /run/xrdp

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 3389

CMD ["/start.sh"]
