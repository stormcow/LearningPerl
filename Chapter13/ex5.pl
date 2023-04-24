use v5.36;
use strict;

my ( $old, $new ) = @ARGV;

rename $old => $new or warn "couldnt rename";
