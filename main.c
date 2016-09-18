#include <stdio.h>
#include <stdlib.h>

/****************************************
 *
 ****************************************/
int main (int argc, char **argv)
{
  int i;

  fprintf(stdout,"start\n");

  for (i = 1; i < argc; i++) {
    fprintf(stdout,"unknown arg: '%s'\n", argv[i]);
  }

  fprintf(stdout,"normal exit\n");
  exit(0);
}

/****************************************
 * END OF FILE
 */
