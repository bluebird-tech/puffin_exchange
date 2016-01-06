FROM gewo/ruby:2.2.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /puffin_exchange
WORKDIR /puffin_exchange
ADD Gemfile /puffin_exchange/Gemfile
ADD Gemfile.lock /puffin_exchange/Gemfile.lock
RUN bundle install
ADD . /puffin_exchange
CMD ["bundle exec rails s"]