#!/bin/sh
cd osmbc

npm install

dbflag="../init-db.flag"
if [ -f $dbflag ]; then
   echo "First start, creating database."
   node ./import/createdb.js --createTables --dropTables --createView --createIndex --addUser $OSMUSERNAME --verbose && rm $dbflag
fi

# startup
npm start
