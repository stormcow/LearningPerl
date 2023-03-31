
$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";

print $fred[0]."\n";
$fred[2] = "diddley";
$fred[1] .= "whatis";

$number = 2.7821;
print $fred[$number - 1]."\n";

$blank = $fred[142_234];
$blanc = $mel;
print $blank."\n";
print $blanc."\n";

$rocks[0] = 'bedrock';
$rocks[1] = 'slate';
$rocks[3] = 'lava';
$rocks[99] = 'schist';

$end = $#rocks;
$number_of_rocks = $end + 1;
$rocks[$#rocks] = 'hard rock';

$end = $rocks[-1];

(1,2,3);
(1,2,3,);
("fred",4.5);
();

(1..100); 
(1..5);
(1.7..5.7); #truncated to int
(0,2..6,10,12);

($m..17);
(0..$#rocks);

("fred","barney","betty","wilma","dino");
qw(fred barney betty wilma dino);

qw{
  /usr/dict/words
  /home/rootbeer/
};

($fred, $barney, $dino) = ("flintstone", "rubble", undef);
($fred, $barney) = ($barney, $fred);
($betty[0], $betty[1]) = ($betty[1], $betty[0]);

($fred, $barney) = qw< flintstone rubblel slate granite >;
($wilna, $dino) = qw[flintstone];

@rocks = qw/ bedrock slate lava/;
@tiny = ();
@giant = 1..1e5;
@stuff = (@giant, undef, @giant);
$dino = "granite";
@quarry = (@rocks, "crushed rock", @tiny, $dino);

@array = 5..9;
$fred = pop(@array);
$barney = pop(@array);

pop(@array);

push(@array, 0);
push @array, 8;
push @array, 1..10;
@others = qw/ 9 0 2 1 0 /;
push @array, @others;

@array = qw(dino fred barney);
$m = shift(@array);
$n = shift(@array);
shift(@array);
$o = shift(@array);
unshift(@array, 5);
unshift(@array, 5);
@others = 1..3;
unshift(@array, @others);

@array = qw(pebbles dino fred barney betty);
@removed = splice(@array, 2);

@array = qw(pebbles dino fred barney betty);
@removed = splice(@array, 2, 1);
print(@removed);

@array = qw(pebbles dino fred barney betty);
@wilma = qw(new line word);
@removed = splice(@array, 2, 1, @wilma);
print(@removed."\n");
print(@array);

@rocks = qw(flintstone slate rubble);
print("\nquartz @rocks limestone\n");
print("three rocks are: @rocks\n");
print("Theres nothing in the parens @empty here\n");
$email = "fred@bedrock.com"; #interpolation of @bedrock
$email = "fred\@bedrock.com"; #break
$email = 'fred@bedrock.com'; #static

@fred = qw(hello dolly);
$y = 2;
$x = "This is $fred[1]'s place";
$x = "This is $fred[$y - 1]'s place";

@fred = qw(eating rocks is wrong);
$fred = "right";
print("this is $fred[3]\n");
print("this is ${fred}[3]\n");
print("this is $fred"."[3]\n");
print("this is $fred\[3]\n");

foreach $rock (qw/bedrock slate lava/) {
  print("one rock is $rock.\n");
}

@rocks = qw(bedrock slate lava);
foreach $rock (@rocks) {
  $rock = "\t$rock";
  $rock .= "\n";
}
print("The rocks are:\n", @rocks);

$rock = 'shale';
@rocks = qw(bedrock slate lava);

foreach $rock (@rocks) {
  print($rock);
}

print("\nrok is still $rock\n");

foreach (1..10) {
  print("I can count to $_!\n");
}

$_ = "yabba dabba doo\n";
print; #prints $_

@fred = 6..10;
@barney = reverse(@fred);
@wilma = reverse(6..10);
@fred = reverse(@fred);

@rocks = qw(bedrock slate rubble granite);
@sorted = sort(@rocks);
print(@sorted,"\n"); @back = reverse(sort(@rocks)); @rocks = sort(@rocks);
@numbers = sort(97..102);

sort(@rocks); #doesnt modify @rocks @rocks = sort(@rocks); #modifies @rocks

require v5.12;
#with each
@rocks = qw(bedrock slate rubble granite); while(($index, $value) = each
  @rocks) { print("$index: $value\n"); }

#without each
@rocks = qw(bedrock slate rubble granite); foreach $index (0..$#rocks) {
  print("$index: $rocks[$index]\n");
}

42 + $something; #something must be a scalar
sort(@something); #something must be a lsit

@people = qw(fred barney betty);
@sorted = sort(@people); #list context
$number = 42 + @people; #scalar context: 42 + length of list

@list = @people; # a list of three people
$n = @people; #the number 3

@backwards = reverse(qw(yabba dabba do)); #do dabba yabba
$backwards = reverse(qw(yabba dabba do)); # odabbadabbay

# $fred = $something; #scalar context
# @pebbles = $something; #list context
# ($wilma, $betty) = $something; #list context
# ($dino) = $something; #list context
#
# $fred = $something;
# $fred[3] = $something;
#
# 123 + $something;
# $something + 64;
#
# if ($something) {...}
# while ($something) {...}
# $fred[$something] = something;
#
# @fred = $something;
# ($fred, $barney) = $something;
# ($fred) = $something;
# push(@fred, $something);
# foreach $fred ($something) {...}
# sort($something);
# reverse($something);
# print($something);

@fred = 6*7; #returns one element list (42)
@barney = "hello"." "."world";

@wilma = undef; #doesnt actually clear the list
@betty = (); #correct way to clear a list

@rocks = qw(talc quartz jade obsidian);
print("How many rocks do you have?\n");
print("I have ", @rocks, " rocks!\n"); #I have talc quartz jade obsidian rocks
print("I have ", scalar(@rocks), " rocks!\n"); #I have 4 rocks

@lines = <STDIN>; #read standard input in list context
chomp(@lines); #discard all the newline characters
chomp(@lines = <STDIN>); #same as above but omre compact


