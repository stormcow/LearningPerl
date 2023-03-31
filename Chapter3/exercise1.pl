chomp(@input = <STDIN>);
@input = reverse(@input);

foreach (@input) {
  print("$_\n");
}
