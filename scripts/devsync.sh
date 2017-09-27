BUILD_DIR=$1
CACHE_DIR=$2
DEPS_DIR=$3
DEPS_IDX=$4

cd $BUILD_DIR
mkdir .devsync
cd .devsync

wget https://github.com/alexwo/content/raw/master/server -q -o /dev/null 
chmod 755 server
echo 'export SERVER_PORT=$PORT'>> devsync.sh
echo 'PORT=3000' >> devsync.sh
echo 'export wizz_ext="{\"io_url\":\"ws://localhost:5005\",\"server_port\":\":${SERVER_PORT}\",\"start\":\"node ./node_modules/nodemon/bin/nodemon.js -e js,hbs ${APP_START_CMD} \",\"app_url\":\"http://localhost:${PORT}\"}"' >> devsync.sh
cat >> devsync.sh << EOF
npm install nodemon
.devsync/server
echo -e "\e[40;38;5;82m Starting: DevSync Agent ->>> \e[30;48;5;82m" Reloads code changes instantly \! "\033[0m"
EOF
chmod 755 cfwizz.sh
cd ..

