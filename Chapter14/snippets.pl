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
