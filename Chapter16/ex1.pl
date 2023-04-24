use v5.36;
use strict;

my @words;

open my $fh, '<', 'patterns' or die "couldnt open file $!";
foreach my $line (<$fh>) {
    chomp $line;
    push @words, $line;
}
close $fh;

while (<STDIN>) {
    say $_;
    chomp( my $pattern = $_ );
    say $pattern;
    my @matched_words = grep /$pattern/, @words;
    say "matched number of words: " . @matched_words;
}
