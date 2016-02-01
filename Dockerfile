# Base image 
FROM ruby:2.1.8 

ENV HOME /root/sol
# Set the Rails environment to production
ENV RAILS_ENV production

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential 

WORKDIR $HOME 

# Install gems 
ADD Gemfile* $HOME/ 
RUN bundle install

# Add the app code 
ADD . $HOME

# UPDATE THE DB
RUN rake db:create
RUN rake db:migrate
# RUN rake data:migrate

# Expose port 3000
EXPOSE 3000

# Default command 
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]