FROM ruby:2.4-slim-jessie

RUN apt-get update
RUN apt-get install -y  \
  build-essential       \
  libgmp-dev            \
  liblzma-dev           \
  libpq-dev             \
  libxml2-dev           \
  libxslt-dev           \
  nodejs                \
  patch                 \
  ruby-dev              \
  zlib1g-dev


WORKDIR /app

COPY Gemfile* /app/
RUN bundle install --jobs 20 --retry 5
COPY . .


# We want to include the current git revision information
# to a build to track releases
ARG BUILD_SHA=unknown
ENV BUILD_SHA ${BUILD_SHA}


CMD ["/usr/local/bundle/bin/rails", "s", "-b", "0.0.0.0", "-p", "3000"]
