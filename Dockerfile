FROM rails:4.2.4

# Install imagemagic to process images
RUN apt-get update && apt-get install -y imagemagick --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /usr/src/app/
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ENV BUNDLE_PATH /var/lib/bundle

ADD . $APP_HOME

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

