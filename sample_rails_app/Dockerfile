FROM ruby:3.1

ENV APP_ROOT /app
WORKDIR $APP_ROOT

COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install -j4
ADD . $APP_ROOT

VOLUME /app/public
VOLUME /app/tmp

CMD bash -c "rm -f tmp/pids/server.pid \
  && bundle exec rails s -b 0.0.0.0"

EXPOSE 3000
