#!/bin/bash

echo "#include <bits/stdc++.h>
#include \"$1.h\"
using namespace std;

int main(){

    return 0;
}" > "$1.cpp";

echo "#include <bits/stdc++.h>
#include \"$1.h\"


" > "imp.cpp";

echo "#pragma once

" "$1.h";
