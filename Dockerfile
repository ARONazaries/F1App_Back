FROM ruby
RUN mkdir /f1
WORKDIR /f1

# Update the repositories
RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    curl nodejs npm

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update && apt-get install yarn \
  && yarn add bootstrap
 