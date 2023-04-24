use v5.36;
use strict;

my $word = "This is a test";

my @positions = ();

my $index = 0;

while ( $index != -1 ) {
    $index = index $word, "t", $index + 1;
    push @positions, $index if $index != -1;
}

say "@positions";
