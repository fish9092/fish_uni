#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>

const int maxsize = 100;

int main(int argc, char const *argv[])
{
	char buffer[100];
	printf("welcome to fish-version terminal!\n\n");
	while(1){
		printf("fish-shell：~$ ");
		fgets(buffer,maxsize,stdin);

		buffer[strlen (buffer) -1] = '\0';
		if(feof(stdin) || strcmp(buffer , "exit") == 0){
			printf("\n");
			exit(EXIT_SUCCESS);
		}

		if(strlen(buffer) >= 100){
			printf("failed exect commond\ncommond out of bounds\n");
			continue;
		}

		printf("esegui command:%s \n(run)\n",buffer);	
		int status ,pid = fork();

		if(pid < 0)
			exit(-1);
		if(pid == 0){
			execlp (buffer,buffer,NULL);
			perror("Error");
			exit(-2);
		}
		else{
			pid = wait(&status);
			strcpy(buffer , "");
		}
	}

	return 0;
}
