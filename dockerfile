FROM ruby:3.1

WORKDIR /usr/src/app

COPY . .

RUN gem install bundler
RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000"]
