# Base image 
FROM ruby:2.1.8 

ENV HOME /root/sol

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential 

WORKDIR $HOME 

# Install gems 
ADD Gemfile* $HOME/ 
RUN bundle install 

# Add the app code 
ADD . $HOME 

# Default command 
CMD ["rails", "server", "--binding", "0.0.0.0”, "-e", "production"]