ARG JEKYLL_BASEURL=''

####################################

FROM ruby:alpine as builder

RUN apk add --no-cache make build-base
RUN gem install bundler

WORKDIR /jekyll
ADD Gemfile Gemfile.lock ./
RUN bundle install

ADD . .
ARG benjamin0jeda.github.io
RUN bundle exec jekyll build --baseurl $benjamin0jeda.github.io

####################################

FROM nginx:alpine

ARG benjamin0jeda.github.io
COPY --from=builder /jekyll/_site /usr/share/nginx/html/$benjamin0jeda.github.io
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
