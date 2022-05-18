FROM ruby:2.3.1

ARG UNAME=app
ARG UID=1000
ARG GID=1000

LABEL maintainer="dla-staff@umich.edu"

# Install Vim (optional)
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  vim-tiny

RUN gem update --system 3.2.3
RUN gem install bundler

RUN groupadd -g ${GID} -o ${UNAME}
RUN useradd -m -d /app -u ${UID} -g ${GID} -o -s /bin/bash ${UNAME}
RUN mkdir -p /gems && chown ${UID}:${GID} /gems

USER $UNAME

ENV BUNDLE_PATH /gems

WORKDIR /app

COPY --chown=${UID}:${GID} . /app
RUN bundle install

CMD ["sleep", "infinity"]

