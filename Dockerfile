FROM ruby:2.6.3
# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential libpq-dev imagemagick

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs

RUN apt update -qq && apt install -y nano

RUN apt-get -qq update; \
    apt-get install -qqy \
        graphviz ruby-graphviz \
        python-pydot python3-pydot python-pygraphviz python3-pygraphviz; \
    rm -rf /var/lib/apt/lists/*

# Seta nosso path
ENV INSTALL_PATH /hourlog
# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH
# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./
# Seta o path para as Gems
ENV BUNDLE_PATH /box
# Copia nosso código para dentro do container
COPY . .
 