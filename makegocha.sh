cd ~/GitHub/GOlimp/
dae=$(date "+%y/%m/%d")
mkdir -p "$dae"
cd "$dae"
echo '#include <bits/stdc++.h>
using namespace std;

void t1(){
  printf("Task 1:\n\n");

}

void t2(){
  printf("Task 2:\n\n");

}

void t3(){
  printf("Task 3:\n\n");

}

void t4(){
  printf("Task 4:\n\n");

}

void t5(){
  printf("Task 5:\n\n");

}

int main(){
  t1();
  t2();
  t3();
  t4();
  t5();
 return 0;
}' | cat > main.cpp
echo "g++ main.cpp; ./a.out" > run; chmod +x run;
