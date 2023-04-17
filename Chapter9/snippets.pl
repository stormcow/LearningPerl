use v5.36;
use strict;

$_ = "He's out bowling with barney tonight";
s/barney/fred/;
say "$_";

s/Wilma/Betty/;
say "$_";

s/with (\w+)/against $1's team/;
say $_;

$_ = "green scaly dinosaur";
s/(\w+) (\w+)/$2, $1/;
say $_;

s/\A/huge, /;
say $_;

s/,.*een//;
say $_;

s/green/red/;
say $_;

s/\w+$/($`!)$&/;
say $_;

s/huge/gigantic/;
say $_;

$_ = 'fred flinstone';
if (s/fred/wilma/) {
    say "successfully replaced fred with wilma";
}

$_ = "home, sweet home";
s/home/cave/g;
say $_;

$_ = "Input data\t may have    extra whitespace";
s/\s+/ /g;
say $_;

s/\A\s+//;    #replace leading whitepsace with nothing
s/\s+\z//;    # replcae trailiing whitespace iwth nothing

s/\A\s+|\s+\z//g;    #strip leading, trailing whitespace

s#\Ahttps://#http://#;
s{fred}{barney};
s[fred](barney);
s<fred>#barney#;

s#wilma#Wilma#gi
  ;    #replace every Wilma or WILMA or WilmA or really any wilma with Wilma
s{__END__.*}{}s;    #chop off the end marker and all following lines

# $file_name =~ s#\A.*/##s; #in $file_name remove any unixstyle path

my $original = 'Fred ate 1 rib';
my $copy     = $original;
$copy =~ s/\d+ ribs?/10 ribs/;
say $copy;

( my $copy2 = $original ) =~ s/\d+ ribs?/10 ribs/;
say $copy2;

my $copy3 = $original =~ s/\d+ ribs?/10 ribs/r;
say $copy3;

$_ = "I saw Barney with Fred";
s/(fred|barney)/\U$1/gi;
say $_;

s/(fred|barney)/\L$1/gi;
say $_;

s/(\w+) with (\w+)/\U$2\E with $1/i;
say $_;

s/(fred|barney)/\u$1/ig;
say $_;

s/(fred|barney)/\u\L$1/ig;
say $_;

my $name = 'fred';
say "Hello, \L\u$name\E, would you like to play a game?";

my $input  = 'fRed';
my $string = 'FRED';
if ( "\L$input" eq "\L$string" ) {
    say "they are the same";
}

use utf8;
$input  = 'Steinerstraße';
$string = 'STEINERSTRASSE';
if ( "\Linput" eq "\Lstring" ) {
    say " they are the same";
}

if ( "\F$input" eq "\F$string" ) {
    say "they are the same";
}

my $start   = "Fred";
my $uncapp  = lcfirst($start);      #fred
my $uppered = uc($uncapp);          #FRED
my $lowered = lc($uppered);         #fred
my $capped  = ucfirst($lowered);    #Fred
my $folded  = fc($capped);          #fred

if (s/\(\(\(Fred/Fred/) {
    say "removed parents";
}
if (s/\Q(((Fred/Fred/) {
    say "removed parents";
}
if (s/\Q(((\E(Fred)/$1/) {
    say "removed $1";
}
my $prefix = '(';
if (s/\Q$prefix\E(Fred)/$1/) {
    say "presented by";
}

my $input_pattern = 'aa';
$prefix = quotemeta($input_pattern);

if (s/$prefix(Fred)/$1/) {
    say "$1 alalal";
}

my @fields = split /separator/, $string;

@fields = split /:/, "abc:def:g:h";
say "@fields|";

@fields = split /:/, "abc:def::g:h";
say "@fields|";

@fields = split /:/, ":::a:b:c:::";
say "@fields|";

@fields = split /:/, ":::a:b:c:::", -1;
say "@fields|";

my $some_input = "This    is a \t         test.";
my @args       = split /\s+/, $some_input;
say "@args|";

@fields = split;    #like split /\s+/, $_
say "@fields";

#my $result = join $glue, @pieces;

my $x = join ":", qw(4 6 8 10 12);
say $x;

my $y = join "foo", "bar";
say $y;

my @empty;
my $empty = join "baz", @empty;
say $empty;

my @values = split /:/, $x;
my $z      = join "-", @values;
say $z;

$_ = "Hello there, neighbor!";
my ( $first, $second, $third ) = /(\S+) (\S+), (\S+)/;
say "$second is my $third";

my $text  = "Fred dropped a 5 ton granite block on Mr.Slate";
my @words = ( $text =~ /([a-z]+)/ig );
say "@words";

$text = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %last_name = ( $text =~ /(\w+)\s+(\w+)/g );

for my $key ( keys %last_name ) {
    say "$key | $last_name{$key}";
}

$text = '<b>Fred</b> and <b>Barney</b>';
$text =~ s|<b>(.*)</b>|<b>\U$1\E</b>|g;
say $text;

$text = '<b>Fred</b> and <b>Barney</b>';
my $match_count = $text =~ s|<b>(.*)</b>|\U$1|g;
say "$match_count: $text";

$text        = '<b>Fred</b> and <b>Barney</b>';
$match_count = $text =~ s|<b>(.*?)</b>|\U$1|g;
say "$match_count: $text";

#?? least of zero or one match
#*? zero or more, as few as possible
#+? one or more, as few as possible
#{3,}? at least three but as few as possibe
#{3,5} at least three , as many as five, but as few as possible

my $string = "This doesn't capitalize correcty";
$string =~ s/\b(\w)/\U$1/g;
say $string;

$string = "This doesn't capitalize correcty";
$string =~ s/\b{wb}(\w)/\U$1/g;
say $string;

$string =~ s/(.{50,65}\b{lb})/$1\n/g;
say $string;

$_ = "I'm much better\nthan Barney is\nat bownling,\nWilma.";
say "Found 'wilma' at the start of line\n" if /^wilma\b/im;

# open File, $filename
#  or die "cant open $filename": $!;
# my $lines = join '', <FILE>;
# $lines =~ s/^/$filename: /gm;
#

#Prgram name: granite
#Author: Gilber Bates
#Company: RockSoft
#Deparment: R&D
#Phone: 503 555-0095
#Date: Tues March 9, 2004
#Version 2.1
#Size: 21K
#Status: Final Beta
#
##!/usr/bin/perl -w
#
#use strict;
#
#chomp(my $date = `date`);
#$^I = ".bak";
#
#while (<>){
#   s/\AAuthor:.*/Author: Randal L. Schwartz/;
#   s/\APhone:.*\n//;
#   s/\ADate:.*/Date: $date/;
#   print;
#}

#perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat
#

