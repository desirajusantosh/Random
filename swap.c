/*
swap two nos with out using third variable
swapping two variable
a = a^b
b = b^a
a = a^b

a = a+b
b = a-b
a = a-b
*/

#include<stdio.h>

void swap(int *x, int *y){
  int temp = *x;
  *x = *y;
  *y = *temp;
}

void main(){
  int x = 50; 
  int y = 4;
  swap(&x, &y);
}
