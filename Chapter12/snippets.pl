use v5.36;
use strict;

# my $filename = 'name';

# die "Oops a file called $filename already esists"
#   if -e $filename;

# warn "Config file is looking pretty old"
#   if -M CONFIG > 28

# my @original_files = qw/fred barney betty wilma pebbles dine/;
# my @big_old_files;
# foreach my $filename (@original_files) {
#     push @big_old_files, $filename
#       if -s $filename > 100_000 and -A $filename > 90;
# }

# -r file or directory is readable by this user or group
# -w file or directory is writable by this user or group
# -x file or directory is executable by this user or group
# -o file or directory is owned by this user
# -R file or directory is readable by this real user or group
# -W file or directory is writable by this real user or group
# -O file or directory is owned by this real user
# -e file or directory name exists
# -z file exists and has zero size
# -s file or directory exists and has nonzero size
# -f entry is a plain file
# -d entry is a directory
# -l entry is a symbolic link
# -S entry is a socket
# -p entry is named pipe
# -b entry is a block-special file
# -c entry is a character-special file
# -u file or directory is setuid
# -g file or directory is setgid
# -k file or directory has the sticky bit set
# -t the filehandle is a TTY
# -T file looks like a text file
# -B file looks like a binary file
# -M modification age
# -A access age
# -C inode-modification age

# foreach (@lots_of_filenames) {
#     say "$_ is readable" if -r;
# }

# my $size_in_k = -s /1000;

# my $size_in_k = (-s) / 1024;

# my $size_in_k = (-s $filename) / 1024;

# if ( -r $filename and -w $filename ) {
#     ...;
# }

# if ( -r $filename and -w _ ) { ... }

# if ( -r $filename ) {
#     ...;
# }
# if ( -w _ ) {
#     ...;
# }

# if ( -r $filename ) { ... }

# #_ is for $filename

# lookup($other_filename);

# #_ is now for $other_filename

# if ( -w _ ) {
#     ...;
# }
# #returns if $other_ilename is writable

# sub lookup {
#     return -w $_[0];
# }

# #prior to 5.10
# if ( -r $filename and -w _ ) { ... }

# #5.10 and +
# if ( -w -r $filename ) { ... }

# if ( -r -w -x -o -d $filename ) {
#     say " readable writiable executable directory that is mine";
# }

# if ( -d $filename and -s _ < 512 ) { ... }

# my (
#     $dev,  $ino,   $mode,  $nlink, $uid,     $gid, $rdev,
#     $size, $atime, $mtime, $ctime, $blksize, $blocks
# ) = stat($filename);

#invoking stat at symbolic link returns info about whats its pointing at, not hte link itself
#unless the link is not pointing at anything

# my $timestamp = 14541332353;
# my $date      = localtime $timestamp;

# say $date;

# my ( $sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst ) =
#   localtime $timestamp;

# my $now = gmtime;

# say $now;

#examples of bitwise operations
#10 & 12 - bitwise and - which bits are true in both operands(this gives 8)
#10 | 12 - bitwise or - which bits are true in one operand or the other (gives 14)
#10 ^ 12 - bitwise xor - which bits are true in one operand or the other but not both (this ives 6)
#6 << 2 - bitwise shift left - shift the left operand the number of bits shown by the right operand,
#adding zerobits at the leastsginficat places (gives 24)
#25 >> 2 - bitwise shift right - shift the left operand the number of bits shown by the irght operand,
#discarding the leastsignificant bits(gives 6)
#~ 10 - bitwise negation - returns the number with the opposite bit for each bit in the operand
#

# warn "hey, the configration file is world-writable!"
#   if $mode & 0002; #security problem

# my $classical_mode = 0777 & $mode; #maskoff extra high bits
# my $u_plus_x       = $classical_mode | 0100; #turn one bit on
# my $go_minus_r     = $classical_mode & ( ~0044 ); #turn two bits off

# my $number     = 137;
# my $number_str = '137';
# my $string     = 'amelia';

# say "number_str & string:",   $number_str & $string;
# say "number & string: ",      $number & $string;
# say " number & number_str: ", $number & $number_str;
# say "number_str & string: ",  $number_str & $string;

use feature qw(bitwise);

my $number     = 137;
my $number_str = '137';
my $string     = 'amelia';

# &. -  string operation
# & - number operatoin
say "number_str &. string:",   $number_str &. $string;
say "number &. string: ",      $number &. $string;
say " number &. number_str: ", $number &. $number_str;
say "number_str &. string: ",  $number_str &. $string;

