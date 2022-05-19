FROM ruby:2.5.7

ARG UNAME=app
ARG UID=1000
ARG GID=1000

LABEL maintainer="dla-staff@umich.edu"

# Install Vim (optional)
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  sqlite3 \
  libsqlite3-dev \
  vim-tiny

#RUN gem update --system 3.2.3
RUN gem update --system
RUN gem install bundler

#RUN groupadd -g ${GID} -o ${UNAME}
#RUN useradd -m -d /app -u ${UID} -g ${GID} -o -s /bin/bash ${UNAME}
#RUN mkdir -p /gems && chown ${UID}:${GID} /gems

#USER $UNAME

#ENV BUNDLE_PATH /gems

WORKDIR /app

#COPY --chown=${UID}:${GID} Gemfile /app/Gemfile
#RUN bundle install

#COPY --chown=${UID}:${GID} . /app
COPY . /app
RUN bundle install

CMD ["sleep", "infinity"]

