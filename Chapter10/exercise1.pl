use v5.36;
use strict;

my $secret = int( 1 + rand 100 );

while (<STDIN>) {
    chomp;
    if    (/(__END__)|(quit)|(exit)/i) { last; }
    if    ( $_ > $secret )             { say "too high"; }
    elsif ( $_ < $secret )             { say "too low"; }
    else {
        say " thats correct";
        last;
    }

}
