use v5.36;
use warnings 'all';
use strict;

while (<>) {
    if (/\b(.*[a-z].*)\b/) {
        say "$_";
    }
}
