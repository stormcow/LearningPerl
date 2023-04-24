use v5.36;
use strict;

# my $where = index($big, $small);

my $stuff = "Howdy world";

# my $where = index( $stuff, "wor" );

# my $where1 = index( $stuff, 'w' );
# my $where2 = index( $stuff, "w", $where1 + 1 );
# my $where3 = index( $stuff, 'w', $where2 + 1 );

my @where = ();
my $where = -1;

while (1) {
    $where = index( $stuff, 'w', $where + 1 );
    last if $where == -1;
    push @where, $where;
}
say "positions are @where";

my $last_slash = rindex( "/etc/passwd", "/" );

my $fred = "yabba dabba do";

while (1) {
    $where = index( $fred, 'abba', $where + 1 );
    last if $where == -1;
    push @where, $where;
}

say "positions are @where";

my $mineral = substr( "Fred J. Flintstone", 8, 5 );
my $rock    = substr "Fred J. Flintstone", 13, 1000;
my $pebble  = substr "Fred J. Flintstone", 13;

my $out = substr "some very long string", -3, 2;

my $long  = "some very very long string";
my $right = substr( $long, index( $long, "1" ) );

my $string = "Hello, world";
substr( $string, 0, 5 ) = "Goodbye";

say $string;

substr( $string, 9, 0 ) = "cruel ";
say $string;

substr( $string, -20 ) =~ s/fred/barney/g;

my $previous_value = substr( $string, 0, 5, "Goodbye" );
say $previous_value;
say $string;

# my $date_tag = sprintf
#   "%4d/%02d/%02d %2d:%02d:%02d",
#   $yr, $mo, $da, $h, $m, $s;

my $money = sprintf "%.2f", 2.499997;

sub big_money {
    my $number = sprintf "%.2f", shift @_;
    'keep looping' while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
    $number =~ s/^(-?)/$1\$/;
    $number;
}

sub any_sort_sub {
    my ( $a, $b ) = @_;
    ...;
}

# sub by_number {
#     if    ( $a < $b ) { -1 }
#     elsif ( $a > $b ) { 1 }
#     else              { 0 }
# }

sub by_number { $a <=> $b }
my @some_numbers = qw(1 2 3 4 5 6 6 6 4 3 2 1);
my @result       = sort by_number @some_numbers;
say "@result";

sub by_code_point { $a cmp $b }
my @string  = qw (ala ma kota kot ma ale);
my @strings = sort by_code_point @string;
say "@strings";

sub case_insensitive { "\F$a" cmp "\F$b" }

use Unicode::Normalize;
sub equivalents { NFKD($a) cmp NFKD($b) }

my @numbers = sort { $a <=> $b } @some_numbers;

my @descending = reverse sort { $a <=> $b } @some_numbers;
@descending = sort { $b <=> $a } @some_numbers;

my %score   = ( "barney" => 195, "fred" => 205, "dino" => 30, "ala" => 195 );
my @winners = sort { $score{$b} <=> $score{$a} } keys %score;

foreach my $key ( keys %score ) {
    say "$key: $score{$key}";
}

# @patrod_IDs = sort {
#          &fines($b) <=> &fines($a)
#       or $items{$b} <=> $items{$a}
#       or $family_name{$a} cmp $family_name{$b}
#       or $personal_name{$a} cmp $personal_name{$b}
#       or $a <=> $b
# } @patrod_IDs;
