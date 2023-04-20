use v5.36;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.034} };

for my $key ( keys %modules ) {
    say "$key: $modules{$key}";
}
