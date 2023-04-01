use strict;

sub total {
  my $sum;
  foreach (1..1000) {
    $sum += $_;
  }
  $sum;
}

print(&total."\n");
