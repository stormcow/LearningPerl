use v5.36;
use warnings 'all';
use strict;

my @key_values = reverse sort { length($a) <=> length($b) } keys %ENV;
my $indent     = length( $key_values[0] );

foreach my $key ( sort keys %ENV ) {
    printf "%-${indent}s => %s\n", $key, $ENV{$key};
}
