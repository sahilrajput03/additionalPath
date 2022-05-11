#include<stdio.h>
#include "example1.c"

int main()
{

	char fav_dev[20];
	printf("\n");
  printf("Nice to see you!!!, %s!\n\nEnter your favourite software developer?\n", my_name);
	gets(fav_dev);//Use to get STRING from input.
  printf("\nThanks for telling.\n\n");
	printf("You will meet %s after %d days.",fav_dev, money);
  // getch(); //Use to get one character input from user, and it will not be printed on screen.
  return 0;
}