FROM ruby:2.6.1-alpine
RUN apk add --update build-base sqlite sqlite-dev
RUN mkdir /app \
    && gem install hanami -v '1.3.1' \
    && gem install sqlite3 -v '1.4.0'
COPY Gemfile /app/
COPY Gemfile.lock /app/
WORKDIR /app/
RUN bundle install

COPY . /app/

EXPOSE 2300

CMD ["bundle", "exec", "hanami", "server"]
