@names = qw(fred betty barney dino wilma pebbles bamm-bamm);
chomp(@input = <STDIN>);

foreach (@input) {
  print("@names[$_]\n");
}
