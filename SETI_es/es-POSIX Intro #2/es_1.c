#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/wait.h>

/*
Esegue il comando ls -l, attraverso l’uso di fork(2) ed exec(3). Notate che exec(3) documenta una
famiglia di funzioni e scegliete quella che vi sembra pi`u comoda per il vostro caso.
• Serve usare wait(2) in questo caso? Perch´e?
• S`ı, lo sappiamo che esiste system(3); no, non potete usarla. In compenso, re-implementarsi system
potrebbe essere un utile esercizio.
*/
int main(){
    int status, pid = fork();
    if(pid < 0){
        printf("error in fork!\n");
    }

    if(pid == 0){
        execlp("ls","ls","-l",NULL);
        exit(-1);
    }
    else{
       pid = wait(&status);
       printf("return child pid:%d exit status = %d, \n",pid,status);
    }

}
/*
 *Si,utilizzare la wait(2) è necessario in quanto consente di aspettare la terminazione del processo figlio e di catturarne le informazioni necessarie come ad esempio il Pid (dato come valore di ritorno)
 * la wait fa in modo che il processo che ha chiamato la exec(3) non rimanga nello stato "zombie" dopo esser stato terminato (NB: in questo caso è il processo figlio ad aver chiamato la exec(3))
 * e consente di ritornare alla corretta esecuzione del codice. Inoltre la wait può essere chiamata solamente nel processo padre, pertanto la exec(3) che può essere chiamata sia nel padre che nel figlio è spesso utilizzata nel processo figlio.
 * System("ls -l") fa in completa autonomia e nell'ordine corretto sia la fork, che la wait che la exec (in pratica \System("ls -l")\ è sostituibile a tutto il codice sovrastante)
 */
