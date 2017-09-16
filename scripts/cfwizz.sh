export SERVER_PORT=$PORT
export PORT=3000
export wizz_ext="{\"cfwizz_bin\":\".cfwizz/cfwizz",\"io_url\":\"http://localhost:5005\",\"server_port\":\":${SERVER_PORT}\",\"start\":\"node ./node_modules/nodemon/bin/nodemon.js -e js,hbs ${APP_START_CMD} \",\"app_url\":\"http://localhost:${SERVER_PORT}\"}"
npm install nodemon

mkdir .cfwizz
cd .cfwizz
wget https://github.com/alexwo/content/raw/master/cfwizz
wget https://github.com/alexwo/content/raw/master/server
chmod 777 cfwizz server
cd ..

echo -e "\e[40;38;5;82m Starting: CfWizz Agent ->>> \e[30;48;5;82m" Reloads code changes instantly \! "\033[0m"
./.cfwizz/server

