use v5.36;
use strict;

# fred flintstone:2168:301 Cobblestone Way:555-1212:555-2121:3
# barney rubble:709918:299 Cobblestone Way:555-3333:555-3438:0

# while (<$fh>) {
#     chomp;
#     my @items = split /:/;
#     my ( $card_num, $count ) = ( $items[1], $items[5] );
# }

# my ( $name, $card_nuum, $addr, $home, $work, $count ) = split /:/;

# my ( undef, $card_num, undef, undef, undef, $count ) = split /:/;

# my ( undef, undef, undef, undef, undef, undef, undef, undef, undef, $mtime ) =
#   stat $some_File;

# my $mtime = ( stat $some_File )[9];

# my $card_num = ( split /:/ )[1];
# my $count    = ( split /:/ )[5];

# my ( $card_num, $count ) = ( split /:/ )[ 1, 5 ];

# my ( $first, $last ) = ( sort @names )[ 0, -1 ];

my @names   = qw{zero one two three four fve six seven eight nine};
my @numbers = (@names)[ 9, 0, 2, 1, 0 ];
say "bedrock @numbers";

say "bedrock @names[9,0,2,1,0]";

my $new_home_phone = "555-6099";
my $new_address    = "99380 Red Rock West";

my @items = ();
@items[ 2, 3 ] = ( $new_address, $new_home_phone );

# my @three_scores = ( $scpre{"barney"}, $score{"fredd"}, $score{"dino"} );
# my @three_scores = @score{qw /fred barney dino/};

# my @players        = qw/fred barney dino/;
# my @bowling_Scores = ( 195, 205, 30 );
# @score{@players} = @bowling_Scores;

# my @values = @score{@players};

# my %new_hash;
# @new_hash{@players} = @values;

# my %new_hash = map { $_ => $score{$_} } @players;

# my %new_hash = %score{@players};

# my %first_last_scores = %bowling_Scores[ 0, -1 ];

# my $barney = $fred / $dino;
# my $wilma  = '[abc';
# say "match\n " if /\A($wilma)/;
# open my $caveman, '<', $fred or die;

# eval { $barney = $fred / $dino };

# my $barney = eval { $fred / $dino } // 'NaN';
# say 'i couldnt divide by zero' if $@;

# unless ( defined eval { $fred / $dino } ) {
#     say ' i couldnt divide by zero ' if $@;
# }

# unless ( eval { some_sub(); 1 } ) {
#     say ' i couldnt divide' if $@;
# }

# my @averages = ( 2 / 3, eval { $fred / $dino }, 22 / 7 );

# foreach my $person (qw /fred wilma betty barney dino pebbles/) {
#     eval {
#         open my $fh, '<', $person or die $!;
#         my ( $total, $count );
#         while (<$fh>) {
#             $total += $_;
#             $count++;
#         }
#         my $average = $total / $count;
#         say " average is $average";
#         &do_something( $person, $average );
#     };
#     if ($@) {
#         say "an error occured $@, continuing";
#     }
# }

# eval {
#     say ' there is a mismatched quoute';
#     my $sum = 42 +;
#     /[abc/ say "final output";
# }

# my $operator = 'unlink';
# eval "$operator \@files;";

# eval {
#     ...;
#     die "An unexpected exception message" if $unexpected;
#     die "Bad denominator" if $dino == 0;
#     $barne = $fred /$dino;
# }

# if ($@ =~ ./unexpected/){
#     ...;
# } elsif ( $@ =~/denominator/ ){
#     ...;
# }

# {
#     local $@;
#     eval { ...; };
#     if ( $@ =~ /unexpected/ ) {
#         ...;
#     }
#     elsif ( $@ =~ /denominator/ ) {
#         ...;
#     }
# }

# my @odd_numbers;
# foreach ( 1 .. 1000 ) {
#     push @odd_numbers, $_ if $_ % 2;
# }

# my @odd_numbers = grep {$_@ % 2 } 1..1000;

# my @matching_lines = grep { /\bfred\b/i } <$fh>;

# my @matching_lines = grep /\bfred\b/i, <$fh>;

# my @matching_lines = grep /\bfred\b/i, <$fh>;
# my $line_count     = @matching_lines;

# my $line_count = grep /\bfred\b/i, <$fh>;

my @data = ( 4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95 );

# my @formatted_data;

# foreach (@data) {
#     push @formatted_data, big_money($_);
# }

# my @formatted_data = map { big_money($_) } @data;

# say "The money numbers are: ", map { sprintf( "%25s\n", $_ ) } @formatted_data;

# say "The money numbers are: ", map { sprintf( "%25s\n", big_money($_) ) } @data;

say "Some powers of two are :", map "\t" . ( 2**$_ ) . "\n", 0 .. 15;

# my $first_match;
# foreach (@characters) {
#     if (/\bPebbles\b/i) {
#         $first_match = $_;
#         last;
#     }
# }

use List::Util qw(first);

# my $first_match = first { /\bPebbles\b/i } @characters;

use List::Util qw(sum);
my $total = sum( 1 .. 1000 );

use List::Util qw(max);
my $max = max( 3, 5, 10, 4, 6 );

use List::Util qw(maxstr);

# my $max = maxstr(@strings);

use List::Util qw(shuffle);
my @shuffles = shuffle( 1 .. 1000 );

