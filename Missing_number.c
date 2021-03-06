#include<stdio.h>
int missing_element(int arr[], int size){
  int min, max;
  int xarr = 0, xacc = 0;
  
  //min and max values in the array
  min = arr[0];
  max = arr[0];
  for (i = 0; i < size; ++i){
    if(arr[i] > max)
      max = arr[i];
    if(arr[i] < min)
      min = arr[i];
  }
  
  //Xor of all the values 
  for(i = min; i <= max; ++i){
    xacc ^= i;
  }
  
  for(i = 0; i < size; ++i){
    xarr ^= arr[i];
  }
  return(xacc ^ xarr);
}

int main(){
  int arr[] = {6,7,8,4,9};
  int size = sixeof(arr)/sizeof(arr[0]);
  int missing = missing_element(arr, size);
  printf("missing = %-3d\n", missing);
  return 0;
  
}
  
