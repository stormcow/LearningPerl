use v5.36;

my $currentTime = time;
my %oldestFile  = (
    file => 0,
    age  => $currentTime,
);

for (@ARGV) {
    my $current_age = ( stat $_ )[9];
    if ( $current_age < $oldestFile{age} ) {
        $oldestFile{age}  = $current_age;
        $oldestFile{file} = $_;
    }
}
my $age = localtime( $oldestFile{age} );
say "filename => $oldestFile{file}";
say "age => $age";

# for my $key ( keys %oldestFile ) {
#     say "$key => $oldestFile{$key}", localtime $oldestFile;
# }
