#include <stdlib.h>
#include <stdio.h>
#include "add.h"

int main(int argc, char * argv[]){

    // declare variables
    int a = 10;
    int b = 20;
    int sum = 0;
    int sum_ver = 30;
    int ret = 0;

    // do add process
    ret = my_int_add(&a, &b, &sum);
    
    // confirm if add process execute sucessfully.
    if ( ret ){
        printf("add process : failed");
        return 1;
    } else {
        printf("add process : passed");
    }

    return 0;
}