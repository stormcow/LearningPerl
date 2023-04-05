use v5.36;
use warnings 'all';
use strict;

$_ = "yabba dabba doo!";

if (/abba/) {
    say " match";
}
if (/ab ba/) {
    say "match";    #wont work
}
if (/ba da/) {
    say "match";    #works
}

# /coke\tsprite/ # \t for tab
# /coke\N{CHARACTER TABULATION}sprite/ #\N{charname}
# /coke\011sprite/ #character number, octal
# /coke\x09sprite/ #character number, hex
# /coke\x{9}sprite/ #character number, hex
# /coke${tab}sprite/ #scalar variable

# my $pattern = "(";
# if (/$pattern/) {
#     say "match";
# }

if (//) {    #matches every string
    say " match";
}

# while (<STDIN>) {
#     chomp;
#     if (/ala/) {
#         say "match";
#     }
#     else {
#         say "no match";
#     }
# }

sub match {
    chomp;
    if (/$ARGV[0]/) {
        say "match";
    }
    else {
        say "no match";
    }
}

# while (<STDIN>) {
#     match;
# }

if (/ab.a/) {
    say "4match";
}
if (/doo./) {
    say "5match";
}
if (/doo\./) {
    say "6match";    #doesnt match
}

$_ = 'a real \\ backslash';
if (/\\/) {
    say "7match";
}
$_ = "yabba dabba doo!";
if (/doo\N/) {    #\N equivalent to .
    say "8match";
}

$_ = 'Bamm-bamm';
if (/Bamm-?bamm/) {    #? - 0 or 1
    say "9match";
}

$_ = "Bamm-----------bamm";
if (/Bamm-*bamm/) {    #* - 0 or any time
    say "10match";
}

$_ = 'Bamm            bamm';
if (/Bamm *bamm/) {
    say "11match";
}
if (/B.*m/) {
    say "12match";
}
if (/B.*/) {
    say "13match";
}
if (/.*B/) {
    say "14match";
}
if (/B/) {
    say "15match";
}
if (/Bamm +bamm/) {    #+ - 1 or more
    say "16match";
}

$_ = "yabbbba dabbba doo.";

if (/ab{3}a/) {    #{n} - exactly n characters
    say "17match";
}

if (/ab{3}/) {
    say "18 match";
}
if (/ab{2,3}a/) {    #{a,b} - a: min, b: max
    say "19match";
}
if (/ab{3,}a/) {    #only min specified
    say "20match";
}
if (/ab{,5}a/) {    #only max specified
    say "21match";
}
if (/ab{,999}a/) {
    say "22match";
}

$_ = "abba";
if (/(.)\1/) {    #matches bb
    say "23match";
}

$_ = "yabba dabba doo";
if (/y(....) d\1/) {
    say "24match";
}
if (/y(.)(.)\2\1/) {
    say "25match";
}
if (/y((.)(.)\3\2) d\1/) {
    say "26match";
}

$_ = "aa11bb";
if (/(.)\111/) {    #no match
    say "27match";
}
if (/(.)\g{1}11/) {    #\g{n} - back refrence to group n
    say "28match";
}
if (/(.)\g{-1}11/) {
    say "29match";
}

$_ = "xaa11bb";
if (/(.)(.)\g{-1}11/) {
    say "30match";
}

foreach (qw(fred betty barney dino)) {
    if (/fred|barney/) {    # | - or, matches either left or right
        say "$_ matched";
    }
}

foreach (qw(fred betty barney dino)) {
    if (/fred|barney|betty/) {
        say "$_ match";
    }
}

$_ = "Fred Rubble";
if (/Fred|Wilma Flintstone/) {    #why match??
    say "31 match";
}
if (/(Fred|Wilma) Flintstone/) {    #no match
    say "32 match";
}

$_ = "fred  \t \t  barney";
if (/fred( |\t)+barney/) {
    say "33match";
}
if (/fred( +|\t+)barney/) {
    say "34match";
}

$_ = "fred  \t \t wilma";
if (/fred |\tbarney/) {
    say "35match";
}

$_ = "Bamm-Bamm";
if (/Bamm-?(B|b)amm/) {
    say "36match";
}

$_ = "The HAL-9000 requires authorization to continue.";
if (/HAL-[0-9]+/) {
    say "37match";
}

# [-a] hyphen or an a
# [a-] hyphen or an a
# [a\-z] hyphen or an a or a z
# [a-z] lowercase letters from a to z
# [5.32] matches a literal dot or a 5, 3 or 2

$_ = "Bamm-Bamm";
if (/Bamm-?[Bb]amm/) {
    say "38match";
}

#[^def] anythingn ot d, e or f
#[^n-z] not a lowercase letter from n to z
#[^n\-z] not an n, z or -

$_ = "fred  \t \t barney";
if (/fred\s+barney/) {
    say "39match";
}
if (/fred\h+barney/) {
    say "40match";
}

$_ = "The HAL-9000 requires authorization to continue.";
if (/HAL-\d+/) {
    say "41match";
}

#\d decimal digits
#\D nondecimal digit
#\s whitespace
#\S not whitespace
#\h horizontal whitespace
#\H not horizontal whitespace
#\v vertical whitespace
#\V not vertical whitespace
#\R generalized line ending
#\w 'word'
#\W not 'word' characters
#\n newline
#\N nonnewlines

if (/\p{Space}/) {
    say "42match";
}
if (/\p{Digit}/) {
    say "43match";
}
if (/\p{AHex}\p{AHex}/) {
    say "44match";
}
if (/\P{Space}/) {
    say "45match";
}
if (/\Ahttps?:/) {
    say "46match";
}
if (/\.png\z/) {
    say "47match";
}
