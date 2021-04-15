FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y ghostscript

WORKDIR /app

COPY Gemfile Gemfile.lock /app

RUN bundle install -j 4
