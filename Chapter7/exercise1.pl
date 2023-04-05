use v5.36;
use warnings 'all';
use strict;

while (<>) {
    chomp;
    if (/[Ff]red/) {
        say $_;
    }
}
