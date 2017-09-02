echo -e "\e[40;38;5;82m Installing: \e[30;48;5;82m CfWizz Agent Reloads your code changes instantly"
export CFPORT=$PORT
export PORT=3000  
npm install nodemon 
npm install cfwizz 
npm install redbird 
node ./node_modules/cfwizz/boot.js
