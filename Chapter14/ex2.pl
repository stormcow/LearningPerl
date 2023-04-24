use v5.36;
use strict;

my %last_name = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @keys =
  sort { "\L$last_name{$a}" cmp "\L$last_name{$b}" or "\L$a" cmp "\L$b" }
  keys %last_name;

foreach (@keys) {
    say " $last_name{$_}, $_";
}

# foreach my $key ( keys %last_name ) {
#     say "$key $last_name{$key}";
# }
