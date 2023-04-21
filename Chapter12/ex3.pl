use v5.36;

for (@ARGV) {
    if ( -o $_ and -r _ and -w _ ) {
        say $_;
    }
}
