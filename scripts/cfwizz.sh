echo -e "\e[40;38;5;82m Installing: \e[30;48;5;82m cfwizz"
export CFPORT=$PORT
export PORT=3000  
npm install nodemon 
npm install cfwizz 
npm install redbird 
 title="CFWizz Agent Reloads your code changes instantly\! "
  clear
  echo "\e[30;48;5;82m"
  ast="*********************************************************************"
  columnas=$(tput cols)
  y=$((($columnas-${#ast})/2))
  x=0
  tput cup $x $y
  echo "${ast}"
  echo ""
  y=$((($columnas-${#title})/2))
  x=1
  tput cup $x $y
  echo "${title}"
  echo ""
  y=$((($columnas-${#ast})/2))
  x=2
  tput cup $x $y
  echo "${ast}"
node ./node_modules/cfwizz/boot.js
