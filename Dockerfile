FROM ruby:2.4
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
