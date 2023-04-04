use v5.36;

use strict;
use warnings 'all';

sub print_family {
    foreach my $person ( keys %_ ) {
        say $_{$person};
    }
}
my %family_name = ();

$family_name{'fred'}   = 'ala';
$family_name{'barney'} = 'bala';

foreach my $person (qw (barney fred)) {
    say "ive heard of $person $family_name{$person}";
}

my $foo = 'bar';
say $family_name{ $foo . 'ney' };

$family_name{'fred'} = 'assrara';

my $bedrock = $family_name{'fred'};

say $bedrock;

$family_name{'wilma'} = 'flintstone';

$family_name{'betty'} .= $family_name{'barney'};

say %family_name;

my %some_hash =
  ( 'foo', 35, 'bar', 12.4, 2.5, 'hello', 'wilma', 1.72, 'betty', "bye\n" );

say "------";
my @any_array = %some_hash;
say @any_array;

my %new_hash     = %some_hash;
my %inverse_hash = reverse %some_hash;

my %last_name = (
    'fred'   => 'flintstone',
    'dino'   => undef,
    'barney' => 'rubble',
    'betty'  => 'rubble',
);

my %last_name2 = (
    fred   => 'flintstone',
    dino   => undef,
    barney => 'rubble',
    betty  => 'rubble',
);

# my %last_name = (
#     + => 'flintstone', # wrong, compilation error
# )
#

my %hash = ( 'a' => 1, 'b' => 2, 'c' => 3 );
my @k    = keys %hash;
my @v    = values %hash;

say "@k @v";

my $count = keys %hash;
say $count;

if (%hash) {
    say "that was true";
}

while ( ( my $key, my $value ) = each %hash ) {
    say "$key => $value";
}

say '-------';
foreach my $key ( sort keys %hash ) {
    my $value = $hash{$key};
    say "$key => $value";
}

my %books = ();

$books{'fred'}    = 3;        #true
$books{'wilma'}   = 1;        #true
$books{'barney'}  = 0;        #false
$books{'pebbles'} = undef;    #false

if ( exists $books{'dino'} ) {
    say "exists!!";
}

my $person = "betty";
delete $books{$person};

foreach my $person ( sort keys %books ) {
    if ( $books{$person} ) {
        say "$person has $books{$person} items";
    }
}

say "PATH IS $ENV{PATH}";
