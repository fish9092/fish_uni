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
Esegue il comando ps aux | grep bash, usando, oltre a quella gi`a usate precedentemente, la system-call
pipe(2)
*/

int main(int argc, char const *argv[])
{
	int status,pipe_fd[2],pid, fd_i,fd_o;	

	if(pipe(pipe_fd) < 0 ){
		perror("Error:");
		exit(-1);
	}	

	if( (pid = fork()) < 0 ){
		perror("Error:");
		exit(-1);
	}


	if(pid == 0){
		fd_o = dup2(pipe_fd[1],fileno(stdout));
		if(fd_o < 0){
			perror("Error:");
			exit(-1);
		}
		execl("/usr/bin/ps","ps", "aux" , NULL);
		perror("Error:");
		exit(-1);
	}
	else{
		close(pipe_fd[1]);
		fd_i = dup2(pipe_fd[0],fileno(stdin));
		execl("/usr/bin/grep", "grep" , "bash",NULL);
		wait(&status);
	}

	return 0;
}