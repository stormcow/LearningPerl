#start
use v5.36;
use strict;

$^I = '.out';

while (<>) {
    s/Larry/Fred/gi;
    say;
}
