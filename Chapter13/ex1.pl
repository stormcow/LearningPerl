use v5.36;
use strict;

say "Enter a directory name";

chomp( my $dir = <STDIN> );
say $dir;
if ( ( chdir $dir ) == 1 ) {
    my @files = <*>;
    say "@files";
}
else {
    say "failed";
}

