use v5.36;
use strict;

foreach my $file (@ARGV){
    unlink $file or warn "couldnt delete $file";
}