#include<stdio.h>
#define BIG_ENDIAN 1
#define LITTLE_ENDIAN 0


int main(){
  int i = 1;
  char *p = (char*) (&i);
  if (p[0] == 1)
    return LITTLE_ENDIAN
  else 
    return BIG_ENDIAN
}
