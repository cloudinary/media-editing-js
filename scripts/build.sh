set -e;

rimraf ./lib
npm run build:tsc

##cp CHANGELOG.md to lib
#cp ./CHANGELOG.md ./lib
#
##cp LICENSE to lib
#cp ./LICENSE ./lib

#cp README to lib
cp ./README.md ./lib

#cp package.json to lib
cp ./package.json ./lib
