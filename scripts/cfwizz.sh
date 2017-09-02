export CFPORT=$PORT
export PORT=3000  
npm install nodemon 
npm install cfwizz 
npm install redbird 
echo -e "\e[40;38;5;82m Starting: CfWizz Agent ->>> \e[30;48;5;82m" Reloads code changes instantly \! "\033[0m"
node ./node_modules/cfwizz/boot.js		
