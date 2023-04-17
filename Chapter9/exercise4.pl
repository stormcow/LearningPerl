#start
use v5.36;
use strict;

$^I = ".bak";    # make backups
while (<>) {
    if (/\A#start/) {    # is it the shebang line?
        $_ .= "## Copyright (C) 20XX by Yours Truly\n";
    }
    print;
}
