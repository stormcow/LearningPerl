use strict;
use v5.10;

sub greet {
  state @names;
  if (@names == 0) {
    say("hi @_[0] you are the first one here");
  } else {
    say("hi @_[0] ive seen: @names");
  }
  push(@names, @_[0]);
}

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
