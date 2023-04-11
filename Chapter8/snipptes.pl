use v5.36;
use warnings 'all';
use strict;

# say "Would you like to play a game? ";
# chomp( $_ = <STDIN> );
# if (/yes/i) {
#     say "go bowling";
# }

$_ = "I saw barney\ndown at the bowling\nwith fred";
if (/barney.*fred/s) {
    say "that string mentions fred after barney";
}

/
    -? # an optional minus sign
    [0-9]+ #one or more digits before the decimal point
    \.? #an optional decimal point
    [0-9]* #some optional digits after the decimal point
    [#] #literal pound sign
/x;

/ [abc123] /x;      #matched a,b,c,1,2,3
/ [abc 123] /x;     #matches a,b,c,1,2,3 and space
/ [abc 123] /xx;    #matches a,b,c,1,2,3
/ [a-z 0-9] /xx;    #matches lowercase or digits 0-9

/
    [
        abc
        123
    ]
/xx;

/
    [
        abc #not a comment!
        123
    ]
/xx;

/[0 - 9]/xx;    #still 0-9

if (/barney.*fred/is) {

    #both /i and /s
    say "that string mentions fred after barney";
}

if (
    m{
    barney #the litthe guy
    .*  #anything in between
    fred #the lout guy
}six
  )
{
    #all three of /s and /i and /x
    say "that string mentions fred after barney";
}

/\w+/a;    #A-Z, a-z, 0-9, _
/\w+/u;    #any unicode word character
/\w+/l;    #the ASCII version, and word chars from the locale

/k/aai;    #only matches the ASCII K or k, not the kelvin sign
/k/aia;    #the /a dont need to be to each other
/ss/aai;   #only matches ASCII ss,SS,sS,Ss, not the german
/ff/aai;   #only matches ASCII ff, FF, fF, Ff, not the other

# $_ = <STDIN>;
# my $OE = chr(0xBC);
# if (/$OE/i) {
#     say "found $OE";
# }

# my $OE = chr(0xBC);    #we get what we want
# $_ = <STDIN>;
# if (/$OE/li) {         #locale and case insensitive
#     say "found $OE";
# }

$_ = 'This is a wilma line
barney is on another line
but this ends in fred
and a final dino line';

/fred$/m;      #multiline match
/^barney/m;    #multiline match

my $some_other = "I dream of betty rubble";
if ( $some_other =~ /\brub/ ) {
    say "aye theres the rub";
}

# say "Do you like perl";
# my $likes_perl = ( <STDIN> =~ /\byes\b/i );
# if ($likes_perl) {
#     say " you said you like perl";
# }

$_ = "Hello there, neighbor ";
if (/\s([a-zA-Z]+),/) {
    say "the word was $1";
}
if (/(\S+) (\S+), (\S+)/) {
    say "words were $1 $2 $3";
}

my $dino = "I fear that I'll be extinct after 1000 years";
if ( $dino =~ /([0-9]*) years/ ) {
    say "that sai '$1' years";
}

$dino = "I fear that I'll be extinct after few million years";
if ( $dino =~ /([0-9]*) years/ ) {
    say "that sai '$1' years";    #empty string
}

my $wilma = '123';
$wilma =~ /([0-9]+)/;
$wilma =~ /([a-zA-Z]+)/;
say "wilmas word w $1 or was it?";

if ( $wilma =~ /([a-zA-Z]+)/ ) {
    say "wilmas word was $1";
}
else {
    say "wilma doesnt have a word";
}

if ( $wilma =~ /([a-zA-Z]+)/ ) {
    my $wilma_word = $1;
}

my $name = "Fred or Pebbles";
if ( $name =~ /((F\w+)|(P\d+))\s+(\w+)/x ) {
    say "1: $1, 2: $2";
}

/
(?|
    (F\w+) |
    (P\d+) |
    (Dino)
)
\s+
(\w+)
/x;

if (/(bronto)?saurus (steak|burger)/) {
    say "fred wants a $2";
}

if (/(?:bronto)?saurus (steak|burger)/) {
    say "fred wants a $1";
}

if (/(?:bronto)?saurus (?:BBQ)?(steak|burger)/) {
    say "fred wants a $1";
}

if (/(bronto)?saurus (BBQ )?(steak|burger)/n) {
    say "It matched";
}

my $names = "Fred or Barney";
if ( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) {
    say "I saw $+{name1} and $+{name2}";
}

$names = "Fred Flintstone and Wilma Flintstone";
if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ) {
    say "I saw $+{last_name}";
}

if ( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ) {
    say "I saw $+{last_name}";
}

if ( $names =~ m/(?P<last_name>\w+) and \w+ (?P=last_name)/ ) {
    say "I saw $+{last_name}";
}

if ( "Hello there, neighbor" =~ /\s(\w+),/ ) {
    say "That actually matched '$&'";
}

if ( "Hello there, neighbor" =~ /\s(\w+),/ ) {
    say "That was ($`)($&)($')";
}

if ( "Hello there, neighbor" =~ /\s(\w+),/p ) {
    say "That actually matched '${^MATCH}'";
}

if ( "Hello there, neighbor" =~ /\s(\w+),/p ) {
    say "That was (${^PREMATCH}) (${^MATCH}) (${^POSTMATCH})";
}
