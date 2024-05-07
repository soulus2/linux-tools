#!/bin/bash


echo "#include <bits/stdc++.h>
#include \"$1.h\"
using namespace std;

int main(){

  return 0;
}" | cat > "$1.cpp";

echo "#include <bits/stdc++.h>
#include \"$1.h\"


" | cat > "imp.cpp";

touch "$1.h";
