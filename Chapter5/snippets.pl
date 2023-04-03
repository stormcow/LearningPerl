use strict;
use warnings;
use v5.36;

# my $line = <STDIN>;
# chomp($line);

# chomp( $line = <STDIN> );

# while ( defined( $line = <STDIN> ) ) {
#     say("I saw $line");
# }

# while (<STDIN>) {
#     say("I saw $_");
# }

# while ( defined( $_ = <STDIN> ) ) {
#     say("I saw $_");
# }

# foreach (<STDIN>) {
#     say("I saw $_");
# }

# while ( defined( $line = <> ) ) {
#     chomp($line);
#     say("it was $line that i saw!");
# }

# while (<>) {
#     chomp;
#     say("It was $_ that i saw");
# }

# while ( <<>> ) {
#     chomp;
#     say("It was $_ that i saw");
# }

# @ARGV = qw(larry more curly);
# while ( <<>> ) {
#     chomp;
#     say("It was $_ that i was in some stooge like file");
# }

my $name = "Larry WAll";
say( "Hello there $name, did you know that 3+4 is ", 3 + 4, "?" );

my @array = qw(ala mala pala);
say(@array);
say("@array");

# say(<>);
# say( sort(<>) );

say( 2 + 3 );

my $result = say("hello world");
