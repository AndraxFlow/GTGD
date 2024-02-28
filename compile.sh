### bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if cd target/
then
cd ..
else
echo "\ncreating ${RED}target/${NC} directory"
mkdir target
fi

if g++ -o target/hello_bro Hello2.cpp hello_buddy.cpp 
then
	echo "\n${GREEN}Compile Successful${NC}\n"
	chmod +x target/hello_bro
	target/./hello_bro
else
	echo "\n${RED}Compile Failed${NC}\n"
fi