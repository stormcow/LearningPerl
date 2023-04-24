use v5.36;
use strict;

my @numbers = @ARGV;

@numbers = sort { $a <=> $b } @numbers;
my $indentation = length $numbers[-1];
foreach my $number (@numbers) {
    printf "%${indentation}d\n", $number;
}
