FROM node:12

WORKDIR /var/www

# install osmbc and dependencies
#RUN npm install istanbul -g  # used for Codecoverage during npm test
RUN npm install nyc -g
RUN npm install mocha -g  # used for tests during npm test
#RUN npm install
#RUN npm install bower -g
#RUN bower install 

RUN mkdir /var/www/osmbc

# cleanup
RUN apt-get clean && apt-get --yes --quiet autoremove --purge \
    && rm -Rf /tmp/*

RUN touch init-db.flag

COPY docker/entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
