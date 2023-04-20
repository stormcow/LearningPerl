use v5.36;

# my $name = "/usr/local/bin/perl";

# ( my $basename = $name ) =~ s#.*/##;
# my $basename = $name =~ s/.*\///r;

use File::Basename;

my $name     = '/usr/local/bin/perl';
my $basename = basename $name;
say $basename;

use File::Basename qw/basename/;
use File::Basename qw//;           #import no functions
use File::Basename ();

# sub dirname() {
#     ...;
# }

my $dirname = File::Basename::dirname $name;

# use File::Basename;
# use File::Spec;
# say "please eneter a file name";
# chomp( my $oldname = <STDIN> );
# my $dirname  = dirname $oldname;
# my $basename = basename $oldname;

# $basename =~ s/^/not/;
# my $newname = File::Spec->catfile( $dirname, $basename );
# rename( $oldname, $newname ) or warn "cant renme $oldname to $newname : $!";

use Time::Moment;
my $dt = Time::Moment->from_epoch(time);

printf '%4d%02d%02d', $dt->year, $dt->month, $dt->day_of_month;

my $dt1 = Time::Moment->new(
    year  => 1987,
    month => 12,
    day   => 18,
);

my $dt2 = Time::Moment->now;

my $years  = $dt1->delta_years($dt2);
my $months = $dt1->delta_months($dt2) % 12;

say "\n$years $months";

