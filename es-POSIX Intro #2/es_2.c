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
	char path[100] = "/bin/";
	printf("inserisci nome di un file\n");
	fgets(buffer,maxsize,stdin);
	if(strlen(buffer) >= 100)
		exit(-3);

	strcat(path , buffer);
	path[strlen (path) -1] = '\0';
	printf("esegui path:%s \n(run)\n",path);
	int status ,pid = fork();
	
	if(pid < 0)
		exit(-1);
	if(pid == 0){
		execl (path,buffer,NULL);
		printf("file non trovata\n");
		exit(-2);
	}
	else{
		pid = wait(&status);
		printf("End procces\n");
		printf("return child pid:%d exit status = %d, \n",pid,status);
	}

	return 0;
}
