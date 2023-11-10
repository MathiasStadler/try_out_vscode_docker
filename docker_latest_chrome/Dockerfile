FROM ubuntu:23.04

# FROM HERE
# https://stackoverflow.com/questions/70955307/how-to-install-google-chrome-in-a-docker-container
# Install wget.

RUN apt-get update && apt-get install --no-install-recommends -y \
  # ca-certificates \
  # curl \
  # dumb-init \
  # git \
  # gnupg \
  # libu2f-udev \
  software-properties-common \
  # ssh \
  wget \
  xvfb \
  gnupg \
  sudo
  


# Set the Chrome repo.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

# Install Chrome.
RUN apt-get update && apt-get --no-install-recommends -y install google-chrome-stable


RUN apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/fonts/truetype/noto

COPY start.sh start.sh

#useradd --help
RUN useradd default_user --password default_user
#USER default_user

