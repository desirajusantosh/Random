void PrimeNumber () {
  int num;
  printf (“Enter a number: “);
  scanf (“%d”, num);
// 1 and even numbers are not prime
if ((num == 1) || (num%2 == 0)) {
  printf (“Number is not prime”);
  return;
}

for (int i = 3; i < squareroot (num); i=i+2) {
   if (num % i == 0) {
     printf (“Number is not prime”);
     return;
   }
}

printf (“Number is prime”);
return;
}


