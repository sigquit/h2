FROM dockerfile/nodejs

MAINTAINER Matthias Luebken, matthias@catalyst-zero.com

WORKDIR /home/h2

# Install H2.JS Prerequisites
RUN npm install -g grunt-cli
RUN npm install -g bower

# Install H2.JS packages
ADD package.json /home/h2/package.json
RUN npm install

# Manually trigger bower. Why doesnt this work via npm install?
ADD .bowerrc /home/h2/.bowerrc
ADD bower.json /home/h2/bower.json
RUN bower install --config.interactive=false --allow-root

# Make everything available for start
ADD . /home/h2

# currently only works for development
ENV NODE_ENV development

# Port 3000 for server
# Port 35729 for livereload
EXPOSE 3000 35729
CMD ["grunt"]
