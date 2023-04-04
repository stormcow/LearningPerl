use v5.36;
use warnings 'all';
use strict;

my %names = (
    fred   => 'flintstone',
    barney => 'rubble',
    wilma  => 'flintstone',
);

say "Enter the name:";
chomp( my $input = <STDIN> );

if ( exists $names{$input} ) {
    say "Family name for $input is $names{$input}";
}
else {
    say "The given name does not exist in DB";
}
