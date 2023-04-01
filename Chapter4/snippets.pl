# sub marine {
#   $n += 1; #global variable $n
#   print("hello sailor number $n\n");
# }
#
# &marine;
# &marine;
# &marine;
# &marine;

sub sum_of_fred_and_barney {
  print("hey, you called the sum_of_fred_and_barney suroutine!\n");
  $fred + $barney; #thats the return value
  print("hey im returning a value now!\n"); #new return value
}

$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;
print("\$wilma is $wilma\n");

sub larger_of_fred_or_barney {
  if ($fred > $barney) {
    $fred;
  } else {
    $barney;
  }
}

sub max {
  if ($_[0] > $_[1]) {
    $_[0];
  } else {
    $_[1];
  }
}

$n = &max(10, 15);
print($n."\n");

sub max {
  my($m, $n); #new private vars
  ($m, $n) = @_; #gve names to the parameters
  if ($m > $n) { $m } else { $n }
}

sub max {
  if (@_ != 2) {
    print("Warning! &max should get exactly two arguments")
  }
  my($m, $n); #new private vars
  ($m, $n) = @_; #gve names to the parameters
  if ($m > $n) { $m } else { $n }
}


sub max {
  my($max_so_far) = shift @_; #takes first argument and removes it from the list
  foreach (@_) {
    if ($_ > $max_so_far) {
      $max_so_far = $_;
    }
  }
  if ($max_so_far == undef) {
    print("Empty array");
  } 
  $max_so_far;
}

$maximum = &max(3, 5, 10, 4, 6);
print($maximum."\n");

foreach (1..10) {
  my($square) = $_ * $_; #private variabel is square
  print("$_ squared is $square \n");
}

my($num) = @_; #list context, same as ($num) = @_;
my $num = @_; #scalar context, same as $num = @_;

my $fred, $barney; #wrong, fails to declare $barney;
my($fred, $barney); #declares both

my @phone_number;

foreach my $rock (qw(bedrock slate lava)) {
  print("one rock is $rock\n");
}

$bamm_bamm = 3; # perl creates that variable automatically, global

$bammbamm += 1; #oops

use strict;
use v5.12;

my $bamm_bamm = 3;

my @names = qw(fred barney betty dino wilma pebbles);
my $result = &which_element_is("dino", @names);

sub which_element_is {
  my($what, @array) = @_;
  foreach (0..$#array) {
    if ($what eq $array[$_]) {
      return $_;
    }
  }
  -1;
}

print($result."\n");

#my @cards = shuffle(@deck_of_cards);

sub division {
  $_[0] / $_[1];
}

my $quotient = division 355, 113; #uses &division

sub list_from_fred_to_barney {
  if ($fred < $barney) {
    #count upward from $fred to $barney
    $fred..$barney;
  } else {
    #count downward from $fred to $barney
    reverse $barney..$fred;
  }
}

my $fred = 11;
my $barney = 6;
my @c = &list_from_fred_to_barney;

sub marine {
  state $n = 0;
  $n += 1;
  print("Hello sailor number $n\n");
}

&marine;
&marine;
&marine;
&marine;

sub running_sum {
  state $sum = 0;
  state @numbers;

  foreach my $number (@_) {
    push(@numbers, $number);
    $sum += $number;
  }
  say("The sum of (@numbers) is $sum");
}

running_sum(5,6);
running_sum(1..3);
running_sum(4);

sub next_fibonacci {
  state @numbers = (0,1);
  push(@numbers, $numbers[-2] + $numbers[-1]);
  return $numbers[-1];
}

say(next_fibonacci);
say(next_fibonacci);
say(next_fibonacci);
say(next_fibonacci);
say(next_fibonacci);

use experimental qw(signatures);

# sub max ($m, $n) {
#   if ($m > $n) { $m } else { $n }
# }

sub max ($max_so_far, @rest) {
  foreach (@rest) {
    if ($_ > $max_so_far) {
      $max_so_far = $_;
    }
  }
  $max_so_far;
}

sub max ($max_so_far, @) {
  foreach (@_) {
    if ($_ > $max_so_far) {
      $max_so_far = $_;
    }
  }
  $max_so_far;
}

sub list_from_fred_to_barney ($fred = 0, $barney = 7) {
  if ($fred < $barney) { $fred..$barney }
  else                 { reverse ($barney..$fred)}
}

my @defaults = list_from_fred_to_barney();
my @defaults_end = list_from_fred_to_barney(17);

say("defaults: @defaults");
say("default_end: @defaults_end");

sub one_or_two_args ($first, $=) {...}

sub PI () { 3.14 }

# sub sum ($$) { $_[0] + $_[1] }
# say(sum(1,3,7));

# sub sum :prototype($$) { $_[0] + $_[1] }
# say(sum(1,3,6));
