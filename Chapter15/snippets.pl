use v5.36;
use strict;

system 'date';

system 'ls -l $HOME';
system "ls -l \$HOME";

# system "long_running_command with parameters &";

# system 'start /B long_running_command with parameters';

system 'for i in *; do echo == $i ==; cat $i; done';

my $tarfile = 'something*wicked.tar';
my @dirs    = qw(fred|flintstone <barney&rubbble> betty);
system 'tar', 'cvf', $tarfile, @dirs;

@dirs = qw( ; rm -rf /);

# system $command_line;
# system 'bin/sh','-c',$command_line;
# system '/bin/csh', '-fc', $command_line;

system 'touch', 'name with spaces.txt';

unless ( system 'date' ) {
    say "we gave you a date";
}

!system 'rm -rf files_to_delete' or die "something went wrong $!";

# my $return_value    = system(...);
# my $child_exit_code = $return_value >> 8;

# my $low_ocecnt    = $return_value & 0xFF;
# my $dumped_core   = $low_ocecnt & 0b1_00000000;
# my $signal_number = $low_ocecnt & 0b0111_1111;

# $ENV{'PATH'} = "/home/karasieiczj/bin:$ENV{'PATH'}";
# delete $ENV{'IFS'};
# my $make_result = system 'make';

# use Config;
# $ENV{'PATH'} = join $Config{'path_sep'},
#     '/home/rootbeer/bin', $ENV{'PATH'};

# chdir '/tmp' or die "cannot chir $!";
# exec 'bedrock', '-o', 'args1', @ARGV;

# $ENV{PATH}  = '/bin:/usr/bin';
# $ENV{DEBUG} = 1;
# $ENV{ROCK}  = 'granite';

# chdir '/Users/fred';
# open STDOUT, '>', '/tmp/granite.out';

# exec 'bedrock';

# exec 'date';
# die 'date couldnt run $!';

chomp( my $now = `date` );
say "now is $now";

my @functions = qw( int rand sleep length hex eof not exit );
my %about;

# foreach (@functions) {

#     # $about{$_} = `perldoc -t -f $_`;
#     $about{$_} = qx(perldoc -t -f $_);
# }

# my $output = qx'echo $$';

# my $output_with_errors = `frobnitz -enable 2>&1`;

# my $result = `some_questionable_command arg arg arg </dev/null`;

# my $who_text  = `who`;
# my @who_lines = split /\n/, $who_text;
# say "@who_lines";

# use IPC::System::Simple qw(system);

# my $tarfile = 'something*wicked.tar';

# my @dirs = qw(fred|flintstone <barney&rubble> betty);
# system 'tar', 'cvf', $tarfile, @dirs;

# systemx 'tar', 'cvf', $tarfile, @dirs;

# my @output = capturex 'tar', 'cvf', $tarfile, @dirs;

# open DATE, `date|`        or die;
# open MAIL, `|mail merlyn` or die;

# open my $date_fh, '-|', 'date'        or die;
# open my $mail_fg, '|-', 'mail merlyn' or die;

# open my $mail_fh, '|-', 'mail', 'merlyn' or die;

# my $now = <$date_fh>;

# print $mail_fh 'the time is now $now';

# open my $find_fh, '-|', 'find', qw( / -atime +90 -size +1000 -print)
#   or die "cannot pipe from find $!";
# while (<$find_fh>) {
#     chomp;
#     printf "%s size %dK last accessed %.2f days ago \n",
#       $_, ( 1023 + -s $_ ) / 1024, -A $_;
# }

defined( my $pid = fork ) or die " cannot fo $!";
unless ($pid) {
    exec 'date';
    die "cannot exec date $!";
}
waitpid( $pid, 0 );

# kill 2,     4201 or die "cannot signal 4201 with SIGINT $!";
# kill 'INT', 4201 or die "cannot signal 4201 with SIGNINT $!";
# kill INT => 4201 or die "cannot signl 4201 with SIGNINT $!";

unless ( kill 0, $pid ) {
    warn "$pid has gone away!";
}

my $temp_directory = "/tmp/myprog.$$";
mkdir $temp_directory, 0700 or die " cannot create $temp_directory: $!";

sub clean_up {
    unlink glob "$temp_directory/*";
    rmdir $temp_directory;
}

sub my_int_handler {
    &clean_up();
    die "interrupted, exiting...\n";
}

$SIG{'INT'} = 'my_int_handler';

&clean_up();

# my $int_$flag = 0;
# $SIG{'INT'} = 'my_int_handler';
# sub my_int_handler {
#     $int_flag = 1;
# }

# while (...){
#     last if $int_flag;
# }

# exit();

