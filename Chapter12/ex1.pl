use v5.36;
use strict;

sub test {
    if   ( !-e ) { say "file doesnt exist"; return }
    if   (-r)    { say "readable "; }
    else         { say "not readable"; }
    if   (-w) { say "writable"; }
    else      { say "not writable"; }
    if   (-x) { say "exectuable"; }
    else      { say "not executable"; }
}

for (@ARGV) {
    say "testing for file named: $_";
    test $_;
}
