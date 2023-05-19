#include <stdio.h>
#include <pthread.h>

void* threadFunction(void* arg) {
    printf("Thread executing\n");
    pthread_exit(NULL);
}

int main() {
    pthread_t thread;
  
    pthread_create(&thread, NULL, threadFunction, NULL);
  
    pthread_join(thread, NULL);
  
    printf("Main thread exiting\n");

    return 0;
}
