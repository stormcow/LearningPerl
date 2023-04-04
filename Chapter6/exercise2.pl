use v5.36;
use warnings 'all';
use strict;

my %names = ();

say "enter a list of names:";
chomp( my @input = <> );
foreach my $name (@input) {
    $names{$name} += 1;
}

foreach my $key ( sort keys %names ) {
    my $value = $names{$key};
    say "$key => $value";
}
