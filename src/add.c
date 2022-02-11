#include "add.h"

int my_int_add( int * a, int * b, int * sum ){

    // check  
    assert( a != NULL );
    assert( b != NULL );
    assert( sum != NULL );

    // add 
    *sum = *a + *b;

    return 0;
}
