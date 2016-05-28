FROM ruby:2.3.1
ENV LANG C.UTF-8
ENV APP_HOME /app

RUN apt-get update && \
    apt-get install -y mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p $APP_HOME
WORKDIR $APP_HOME

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

COPY Gemfile $APP_HOME/
COPY Gemfile.lock $APP_HOME/

COPY . $APP_HOME
