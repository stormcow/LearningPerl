use v5.36;
use strict;
use Cwd;

say "the current working directory is ", getcwd();

# open my $fh, '<:utf8', 'relative/path.txt';

chdir '/etc' or die;

foreach my $arg (@ARGV) {
    say "one arg is $arg";
}

my @all_files               = glob '*';
my @pm_files                = glob '*.pm';
my @all_files_including_dot = glob '.* *';

my @all_files2 = <*>;

my $dir       = '/etc/';
my @dir_files = <$dir/* $dir/.*>;

my @files = <FRED/*>;    #glob
my @lines = <FRED>;      #filehandle read

# my @lines2 = <$fred>;          #filehandle read
my $name   = 'FRED';
my @files2 = <$name/*>;        # glob
my @files3 = <$name>;          #indirect filhandle read of FRED handle
my @lines4 = readline FRED;
my @lines5 = readline $name;

my $dir_to_process = '/etc';
opendir my $dh, $dir_to_process or die '$!';

# foreach my $file ( readdir $dh ) {
#     say "one file in $dir_to_process is $file";
# }
use File::Spec::Functions;
while ( my $name = readdir $dh ) {

    # next unless $name =~ /\.pm\z/;
    next if $name =~ /\A\,/;
    $name = catfile( $dir_to_process, $name );
    next unless -f $name and -r $name;
    say $name;
}
closedir $dh;

unlink 'slate', 'bedrock', 'lava';
unlink qw(slate bedrock lava);
unlink glob '*.o';

my $successful = unlink qw(bedrock slate lava);
say " $successful";

foreach my $file (qw(slate bedrock lava)) {
    unlink $file or warn "failed on $file";
}

rename 'old', 'new';

rename 'over_there/some/place/some_File', 'some_file';
rename 'over_there/some/place/some_file' => 'some_file';

foreach my $file ( glob "*.old" ) {

    # my $newfile = $file;
    # $newfile =~ s/\.old\z/.new/;
    ( my $newfile = $file ) =~ s/\.old\z/.new/;
    if ( -e $newfile ) {
        warn "cant rename";
    }
    elsif ( rename $file => $newfile ) {
        say " done";
    }
    else {
        warn " rename failed";
    }
}

link 'chicken' => 'egg' or warn 'cant link chcken to egg';
symlink 'dodgson' => 'carroll' or warn "cant symlink dodgson to carroll";

my $where = readlink 'carroll';
my $perl  = readlink '/usr/local/bin/perl';

# say $where;
# say $perl;

mkdir 'fred', 0755 or warn "cant make dir";

my ( $name, $perm ) = @ARGV;
mkdir $name, oct($perm) or warn "cant create";

foreach my $dir (qw(Fred barney betty)) {
    rmdir $dir or warn " cant remove $dir";
}

my $temp_dir = "/tmp/scratch_$$";
mkdir $temp_dir, 0700 or warn "cant create $temp_dir";
unlink glob "$temp_dir/* $temp_dir/.*";
rmdir $temp_dir;

chmod 0755, 'fred', 'barney';

# my $user  = 1004;
# my $group = 100;
# chown $user, $group, glob '*.o';

defined( my $user  = getpwnam 'merlyn' ) or warn 'bad user';
defined( my $group = getgrnam 'users' )  or warn 'bad group';
chown $user, $group, glob '/home/merlyn/*';

my $now = time;
my $ago = $now - 24 * 60 * 60;
utime $now, $ago, glob '*';
