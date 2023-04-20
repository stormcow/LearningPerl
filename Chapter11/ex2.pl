use v5.36;
use Time::Moment;

if ( @ARGV != 2 ) {
    die
"please give two arguments: Year and number of the month in this format yyyy mm";
}

my $year  = @ARGV[0];
my $month = @ARGV[1];

my $enteredDate = Time::Moment->new(
    year  => $year,
    month => $month,
);

my $dateNow       = Time::Moment->now;
my $elapsedYears  = $enteredDate->delta_years($dateNow);
my $elapsedMonths = $enteredDate->delta_months($dateNow) % 12;

say "$elapsedYears years, $elapsedMonths months";
