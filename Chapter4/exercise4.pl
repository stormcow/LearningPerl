use strict;
use v5.10;

sub greet {
    state $name = "";
    if ( $name eq "" ) {
        print("hi @_[0] you are the first one here\n");
    }
    else {
        print("hi @_[0] $name is also here\n");
    }
    $name = @_[0];
}

greet("Fred");
greet("ben");
