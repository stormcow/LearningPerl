use v5.36;
use strict;

while (<>) {
    chomp;
    if (/(?<name>\w+a)(\W|\Z)(?<extra>.{,5})/) {
        say
"Matched: |$`<$&>$'|\n'name' contains $+{name} 'extra' contains $+{extra}";
    }
    else {
        say "No match: |$_|";
    }
}

#EX1 /match/
