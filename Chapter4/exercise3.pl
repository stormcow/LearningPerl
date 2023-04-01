use strict;

sub average {
  my $sum;
  foreach (@_) {
    $sum += $_;
  }
  return ($sum/@_); 
}

sub above_average {
  my $average = &average(@_);  
  my @items;
  
  foreach (@_) {
    if ($_ > $average) {
      push(@items, $_);
    }
  }
  return(@items);
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
