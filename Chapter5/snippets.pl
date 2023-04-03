use strict;

#use autodie;
use warnings;
use v5.36;

# my $line = <STDIN>;
# chomp($line);

# chomp( $line = <STDIN> );

# while ( defined( $line = <STDIN> ) ) {
#     say("I saw $line");
# }

# while (<STDIN>) {
#     say("I saw $_");
# }

# while ( defined( $_ = <STDIN> ) ) {
#     say("I saw $_");
# }

# foreach (<STDIN>) {
#     say("I saw $_");
# }

# while ( defined( $line = <> ) ) {
#     chomp($line);
#     say("it was $line that i saw!");
# }

# while (<>) {
#     chomp;
#     say("It was $_ that i saw");
# }

# while ( <<>> ) {
#     chomp;
#     say("It was $_ that i saw");
# }

# @ARGV = qw(larry more curly);
# while ( <<>> ) {
#     chomp;
#     say("It was $_ that i was in some stooge like file");
# }

my $name = "Larry WAll";
say( "Hello there $name, did you know that 3+4 is ", 3 + 4, "?" );

my @array = qw(ala mala pala);
say(@array);
say("@array");

# say(<>);
# say( sort(<>) );

say( 2 + 3 );

my $result = say("hello world");

my $user        = "user";
my $days_to_die = 5;

printf( "Hello, %s; your password expires in %d days!\n", $user, $days_to_die );
printf( "%g %g %g\n",                      5 / 2, 51 / 17, 51**17 );
printf( "in %d days!\n",                   17.85 );
printf( "in 0x%x days!\n",                 17 );
printf( "in 0%o days\n",                   17 );
printf( "%6d\n",                           42 );
printf( "%2d\n",                           2e3 + 1.95 );
printf( "%10s\n",                          "wilma" );
printf( "%-15s\n",                         "flintstone" );
printf( "%12f\n",                          6 * 7 + 2 / 3 );
printf( "%12.3f\n",                        6 * 7 + 2 / 3 );
printf( "%12.0f\n",                        6 * 7 + 2 / 3 );
printf( "Monthly interest rate: %.2f%%\n", 5.25 / 12 );
printf( "%*s\n",                           10, "wilma" );
printf( "%*.*f\n",                         6,  2, 3.156 );

my @items  = qw(wilma dino pebbles);
my $format = "The items are:\n" . ( "%10s\n" x @items );
printf( $format,                                    @items );
printf( "The items are:\n" . ( "%10s\n" x @items ), @items );

open( CONFIG,  'dino' );
open( CONFIG,  '<dino' );
open( BEDROCK, '>fred' );
open( LOG,     '>>logfile' );

my $selected_output = 'my_output';
open LOG, "> $selected_output";

my $file_name = "";

sub logfile_name {
    say($file_name);
}

open CONFIG,  '<:encoding(UTF-8)',  'dino';
open BEDROCK, '>:encoding(UTF-8)',  $file_name;
open LOG,     '>>:encoding(UTF-8)', &logfile_name();

open CONFIG,  '<',  'dino';
open BEDORCK, '>',  $file_name;
open LOG,     '>>', &logfile_name();

open BEDROCK, '>:utf8',                 $file_name;
open BEDROCK, '>:encoding(iso-8859-1)', $file_name;
open BEDORCK, '>:crlf',                 $file_name;
open BEDROCK, '<:crlf',                 $file_name;

binmode STDOUT;    #dont translate line endings
binmode STDERR;    #dont translate line endings

binmode STDOUT, ':encoding(UTF-8)';
binmode STDIN,  ':encoding(UTF-8)';

my $success = open LOG, '>>', 'logfile';    #capture the return value
if ( !$success ) {
    say("open failed");
}

close BEDORCK;

if ( !open LOG, '>>', 'logfile' ) {
    die "cannot create log file: $!";
}

# if ( @ARGV < 2 ) {
#     die "not enough arguments\n";
# }

open LOG, '>>', 'logfile';

if ( !open PASSWD, "/etc/passwd" ) {
    die "How did you get logged in? ($!)";
}

while (<PASSWD>) {
    chomp;
    say $_;
}

print LOG "Captains log, stardate 3.14\n";
my $done  = 5;
my $total = 3;
printf STDERR "%d percent complete\n", $done / $total;

open BEDROCK, '>>', 'bedrock';
select BEDROCK;
print "I hope mr slate doenst find out about this \n";
print "wilma\n";

select STDOUT;
print "back\n";

select LOG;
$| = 1;    #dont keep LOG entries sitting in the buffer
select STDOUT;

#... time passes
print LOG "this gets written to the LOG at once!\n";

#send errors to error log
if ( !open STDERR, ">> error_log" ) {
    die " cant open error log for append : $!";
}

#output with say

my $name = 'fred';
print "$name\n";
print $name, "\n";
say $name;

my @array = qw(a b c d);
say @array;
say "@array";    #interpolatinm

say BEDROCK "Hello";

my $rocks_fh;
open $rocks_fh, '<', 'rocks.txt'
  or die "coult not open rocks.txt: $!";

open my $rocks2_fh, '<', 'rocks2.txt'
  or die "coult not open rocks2.txt: $!";

while (<$rocks_fh>) {
    chomp;
    say $_;
}

open my $stones_f, '>>', 'rocks.txt'
  or die "could not open rocks.txt: $!";
foreach my $rock (qw(slate lava granite)) {
    say $stones_f $rock;
}

say $stones_f, "limestone\n";    #WRONG, probably
say $stones_f "limestone\n";
close $stones_f;

