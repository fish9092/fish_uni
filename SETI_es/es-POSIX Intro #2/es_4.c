#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

/*
Esegue il comando ls -l > filename; ovvero esegue il comando ls con argomento -l redirezionando il suo
standard-output nel file di nome filename, che riceverete come primo argomento dalla linea di comando
(ovvero, argv[1]); oltre alle system-call gi`a usate per gli esercizi precedenti, vi serviranno close(2) e
dup(2), oppure dup2(2).
*/
int main(int argc, char *argv[])
{
	int fd,fd_1;
	char* string;

	if(argc < 2){
		printf("Error:Dont find the input for stdin\n");
		exit(-1);
	}
	else
		string = argv[1];

	fd = open(string , O_RDWR|O_CREAT , 0644);
	if(fd < 0){
		perror("Error:");
		exit(-1);
	}

	fd_1 = dup2(fd,fileno(stdout));
	if(fd_1 < 0){
		perror("Error:");
		exit(-1);
	}

	system("ls -l");
	
	fd = dup2(fileno(stdout),fileno(stdout));
	close(fd_1);
	close(fd);

	return 0;
}