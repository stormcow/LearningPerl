use v5.36;
use strict;

my $fred = "test value";

unless ( $fred =~ /\A[A-Z_]\w*\z/i ) {
    say "They value of \$fred doesnt look like a perl identifier";
}

if ( $fred =~ /\A[A-Z_]\w*\z/i ) { }
else {
    say "They value of \$fred doesnt look like a perl identifier";
}

if ( !( $fred =~ /\A[A-Z_]\w*\z/i ) ) {
    say "They value of \$fred doesnt look like a perl identifier";
}

my $mon = 'Feb';

unless ( $mon =~ /\AFeb/ ) {
    say " this month has atleast thirty days";
}
else {
    say " do you see?";
}

if ( $mon =~ /\AFeb/ ) {
    say "do you see";
}
else {
    say "this month has atleast thirty days";
}

my $i = 10;
my $j = 1;
until ( $j > $i ) {
    $j *= 2;
    say $j;
}

my $n = -5;
say "$n is a negative number " if $n < 0;
if ( $n < 0 ) {
    say "$n is a negative number";
}

$i *= 2 until $i > $j;

while ( $n < 10 ) {
    say " ", ( $n += 2 );
}

my $barney       = 'barney';
my $i_am_curious = 1;
say "fred is $fred barney is $barney" if $i_am_curious;

# {
#     say "please neter a number: ";
#     chomp( my $n = <STDIN> );
#     my $root = sqrt $n;
#     say "the square root of $n is $root";
# }

my $dino = 'd';

if ( !defined $dino ) {
    say "value is undef";
}
elsif ( $dino =~ /^-?\d+\.?$/ ) {
    say " tje value is an integer";
}
elsif ( $dino =~ /^-?\d*\.\d+$/ ) {
    say "the value is a _simple_ floating point number";
}
elsif ( $dino eq '' ) {
    say "the value is an empty string";
}
else {
    say " the value is the string '$dino'";
}

my $bedrock = 42;
$bedrock++;
my @people = qw(ala mama mala pala dala kala ala mala mama);
my %count;
$count{$_}++ foreach @people;
$bedrock--;
my $m = 5;
my $n = ++$m;
my $c = --$m;
my $d = $m++;
my $e = $m--;

my %seen;
foreach (@people) {
    say "ive seen you somewhere before $_" if $seen{$_}++;
}

for ( my $i = 1 ; $i <= 10 ; $i++ ) {
    say " i can count to $i";
}

for ( my $i = 10 ; $i >= 1 ; $i-- ) {
    say "i can count down to $i";
}

for ( $_ = "bedrock" ; s/(.)// ; ) {    #loops while s/// is successful
    say " one character is $1";
}

for ( 1 .. 10 ) {    #really a foreach loop from 1 to 10
    say "i can count to $_";
}

while (1) {
    say "infinite loop, ill break it myself";
    last;
}

# while (<STDIN>) {
#     if (/__END__/) {
#         last;
#     }
#     elsif (/fred/) {
#         say;
#     }
# }

# while(<>){
#     foreach (split){
#         $total++;
#         next if /\W/;
#         $valid++;
#         $count{$_}++;
#     }
# }
# say"total things = $total, valid words = $valid";
# foreach $word (sort keys %count){
#     say "$word was seen $count{$word} times";
# }

# my @words  = qw(fred barney pebbles dino wilma betty);
# my $errors = 0;

# foreach (@words) {
#     ##redo comes here##
#     say " type the word '$_': ";
#     chomp( my $try = <STDIN> );
#     if ( $try ne $_ ) {
#         say " sorry - thats not right";
#         $errors++;
#         redo;
#     }
# }
# say "youve completed the test with $errors errors";

# foreach ( 1 .. 10 ) {
#     say "Iteration number $_";
#     say "Please choose: last. next. redo or none of the above";
#     chomp( my $choice = <STDIN> );
#     last if $choice =~ /last/i;
#     next if $choice =~ /next/i;
#     redo if $choice =~ /redo/i;
#     say "that wasy any of the choices";
# }

# LINE: while (<>) {
#     foreach (split) {
#         last LINE if /__END__/;
#         ...;
#     }
# }

# LINE: while (<>) {
#   WORD: foreach (split) {
#         last LINE if /__END__/;
#         last WORD if /EOL/;
#         say "block";
#     }
# }

#expression ? if_true : if_Fase

my $total   = 10;
my $n       = 3;
my $average = $n ? ( $total / $n ) : "--------";
say "$average";

my $width = 50;
my $size =
    ( $width < 10 ) ? "small"
  : ( $width < 20 ) ? "medium"
  : ( $width < 50 ) ? "large"
  :                   "extra-large";

say $size;
my %dessert;
if ( $dessert{'cake'} && $dessert{'ice cream'} ) {
    say "cake and icecream";
}
elsif ( $dessert{'cake'} || $dessert{'ice cream'} ) {
    say " cake or icecream";
}
else {
    say "none";
}

my $hour = 3;
if ( ( 9 <= $hour ) && ( $hour < 17 ) ) {
    say " yes";
}

my $testname = 'fred';
if ( ( $testname eq 'fred' ) || ( $testname eq 'barney' ) ) {
    say "name";
}

if ( ( $n != 0 ) && ( $total / $n < 5 ) ) {
    say "the average is below five";
}

my $verbose = $ENV{VERBOSE} // 0;
say "i can talk" if $verbose;

foreach my $try ( 0, undef, '0', 1, 25 ) {
    say " trying [$try] => ";
    my $value = $try // 'default';
    say "got [$value]";
}

