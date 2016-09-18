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
    if (strcmp(argv[i],"-foo") == 0) {
      fprintf(stdout,"saw arg: '%s' and ignored it\n",argv[i]);
      continue;
    }
    fprintf(stdout,"unknown arg: '%s'\n", argv[i]);
    fprintf(stdout,"stopping on error\n");
    exit(1);
  }

  fprintf(stdout,"normal exit\n");
  exit(0);
}

/****************************************
 * END OF FILE
 */
