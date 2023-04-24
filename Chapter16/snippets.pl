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
