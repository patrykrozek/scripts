#!/bin/bash
mkdir bin
mkdir include
mkdir src
touch .gitignore
echo -e ".vscode/\nbin/" >> .gitignore



touch run.sh
cat <<- 'EOF' > run.sh
#!/bin/bash
rm ./bin/main
g++ ./src/main.cpp -o ./bin/main &&  
./bin/main
EOF
sudo chmod +x ./run.sh


touch ./src/main.cpp
cat <<- 'EOF' > ./src/main.cpp
#include <iostream>
int main ()
{

}
EOF
