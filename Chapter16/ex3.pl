use v5.36;
use strict;
use POSIX qw(strftime);

my @files = <*>;

foreach (@files) {
    my ( $mtime, $ctime ) =
      map { strftime( '%Y-%m-%d', localtime($_) ); } ( stat $_ )[ 8, 9 ];
    printf "%-15s %15s %15s\n", $_, $mtime, $ctime;
}
