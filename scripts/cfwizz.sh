echo "Starting to install cfwizz"
export CFPORT=$PORT
export PORT=3000  
npm install nodemon 
npm install cfwizz 
npm install redbird 
node ./node_modules/cfwizz/boot.js
