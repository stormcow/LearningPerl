use 5.010;
chomp( $radius = <STDIN> );
$pi = 3.14;
if ( $radius < 0 ) {
    $circumference = 0;
}
else {
    $circumference = 2 * $pi * $radius;
}
say "the circumference is $circumference";
