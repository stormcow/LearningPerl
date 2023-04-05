use v5.36;
use warnings 'all';
use strict;

while (<>) {
    if (/(.*wilma.*fred|.*fred.*wilma.*)/) {
        say "$_";
    }
}
