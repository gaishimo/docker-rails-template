# For development
FROM ruby:2.3.1

ENV LANG=C.UTF-8 \
    APP_HOME=/app

RUN apt-get update && \
    apt-get install -y mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p $APP_HOME

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle

WORKDIR $APP_HOME

COPY Gemfile $APP_HOME/
COPY Gemfile.lock $APP_HOME/

COPY . $APP_HOME
