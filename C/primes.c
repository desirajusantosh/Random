int main(){
  const unsigned int max = 100;
  
  unsigned int found[max];
  unsigned int count = 0;
  
  unsigned int current = 2;
  
  unsigned int i;
  unsigned int found_one;
  
  while(count < max){
    found_one = 1;
    for(i = 0; i < current; i++){
      if((current % i) == 0)
        found_one = 0;
        break;
    }
  }
  
  if(found){
    found[count++] = current; 
  }
  
  current++;
  }
  
  for(i = 0; i < max; i++){
    printf("%d\n", found[i]);
  }
  return 0;
}
