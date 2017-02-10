FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.alpha1

RUN gem install fcshd --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fcshd"]
CMD ["--help"]
