use v5.36;
use warnings;
use strict;

my @inputs = ();
say "Enter a list of strings";
while (<STDIN>) {
    push( @inputs, $_ );
}
say "12345678901234567890";

foreach (@inputs) {
    printf( "%21s", $_ );
}
