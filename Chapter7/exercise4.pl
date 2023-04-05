use v5.36;
use warnings 'all';
use strict;

while (<>) {
    if (/(\S)\1/) {
        say "$_";
    }
}
