use v5.10;

hex('DEADBEEF');
hex('OxDEADBEEF');
oct('0377');
oct('0o377');
oct('377');
oct('0xDEADBEEF');
oct('0b1101');

$name = 'akalama';
$Name;
$NAME;

$fred   = 17;
$barney = 'hello';

print $fred;
print "\n" . 6 * 7;

$meal   = "brontosaurus steak";
$barney = "fred ate a $meal";
$barney = 'fred ate a ' . $meal;

say $barney say $name;

if ( $name gt 'fred' ) {
    say "$name comes after 'fred'";
}
else {
    say "hlelo";
}

$is_bigger = $name gt 'fred';
if ($is_bigger) {
    say 'TRUE';
}
else {
    say 'FALSE';
}

#$line = <STDIN>;
#chomp($line);
chomp( $line = <STDIN> );
if ( $line eq "\n" ) {
    say "that was jus ta blank line\n";
}
else {
    print "That line of input was $line\n";
}

$count = 0;
while ( $count < 10 ) {
    $count += 2;
    say "count is now $count";
}

$n = 1;
while ( $n < 10 ) {
    $sum += $n;
    $n   += 2;
}
say "total sum was $sum";

$string .= "more text\n";

$next_line = <STDIN>;
if ( defined($next_line) ) {
    say "the input was $next_line";
}
else {
    say "no input";
}
