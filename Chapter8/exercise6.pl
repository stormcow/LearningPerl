use v5.36;
use strict;

while (<>) {
    if (m/(?<match>.*)\s+\Z/) {
        say "$+{match}_";
    }
}
