echo -e "\e[40;38;5;82m Installing: \e[30;48;5;82m cfwizz \e[0m \n\e[44m>> The cfwizz Agent Reloads code changes instantly to cloud foundry! "
export CFPORT=$PORT
export PORT=3000  
npm install nodemon 
npm install cfwizz 
npm install redbird 
node ./node_modules/cfwizz/boot.js
echo -e "\e[44m>> cfwizz Agent is starting\!"
