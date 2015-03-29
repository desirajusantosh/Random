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
