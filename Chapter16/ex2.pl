use v5.36;
use strict;

my @files = <*>;

foreach (@files) {
    my ( $mtime, $ctime ) = ( stat $_ )[ 9, 10 ];
    printf "%-15s %15s %15s\n", $_, $mtime, $ctime;
}
