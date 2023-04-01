use strict;

sub total {
  my $sum;
  foreach (@_) {
    $sum += $_;
  }
  $sum;
}

my @fred = qw(1 3 5 7 9);
my $fred_total = &total(@fred);
print($fred_total."\n");

my $user_total = total(<STDIN>);
print("$user_total\n");
