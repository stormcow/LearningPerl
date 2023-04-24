use v5.36;
use strict;

sub my_hup_handler { state $n; say 'caught hup: ', ++$n; }

sub my_usr1_handler {
    state $n;
    say 'caught usr1 ', ++$n;
}

sub my_usr2_handler {
    state $n;
    say 'caught usr2 ', ++$n;
}

sub my_int_handler {
    say 'caught int, exiting', exit;
}

say "i am $$";

foreach my $signal (qw(int hup usr1 usr2)) {
    $SIG{ uc $signal } = "my_${signal}_handler";
}

while (1) { sleep 1 }
