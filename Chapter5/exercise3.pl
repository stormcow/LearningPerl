
use v5.36;
use warnings 'all';
use strict;
use POSIX 'ceil';

my @inputs = ();
my $line   = "1234567890";
say "enter the width:";
chomp( my $width = <STDIN> );

if ( $width > length($line) ) {
    $line = "$line" x ceil( $width / length($line) );
}

say "Enter a list of strings";
while (<STDIN>) {
    push( @inputs, $_ );
}

say $line;

$width += 1;
foreach (@inputs) {
    printf( "%${width}s", $_ );
}
