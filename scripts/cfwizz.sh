BUILD_DIR=$1
CACHE_DIR=$2
DEPS_DIR=$3
DEPS_IDX=$4
echo "showing build dir:"
ls $BUILD_DIR
cd $BUILD_DIR
mkdir .cfwizz
cd .cfwizz
wget https://github.com/alexwo/content/raw/master/cfwizz  -q -o /dev/null 
wget https://github.com/alexwo/content/raw/master/server -q -o /dev/null 
chmod 777 cfwizz server

echo 'export SERVER_PORT=$PORT'>> cfwizz.sh
echo 'PORT=3000' >> cfwizz.sh
echo 'export wizz_ext="{\"cfwizz_bin\":\".cfwizz/cfwizz\",\"io_url\":\"http://localhost:5005\",\"server_port\":\":${SERVER_PORT}\",\"start\":\"node ./node_modules/nodemon/bin/nodemon.js -e js,hbs ${APP_START_CMD} \",\"app_url\":\"http://localhost:${PORT}\"}"' >> cfwizz.sh
cat >> cfwizz.sh << EOF
npm install nodemon
.cfwizz/server
echo -e "\e[40;38;5;82m Starting: CfWizz Agent ->>> \e[30;48;5;82m" Reloads code changes instantly \! "\033[0m"
EOF
chmod 777 cfwizz.sh

cd ..

