#NQ-BCS316
#Exercise 1 - holds the numbers from 1 to 25. 
#Creates a slice of that list with a different name that holds all the odd numbers, 
#and another slice of that sublist that holds all the primes. 
#Then displays the last slice, one element at a time. 
#Lastly, Displays the size of all three lists.
use 5.23.0;
use strict;
use warnings;

# Creates an array of numbers from 1 to 25:
my @numbers = (1..25);

# Slices the array to create a list of odd numbers:
my @odds = ();
foreach my $number (@numbers) {
    push @odds, $number if $number % 2 == 1;
}

# Slices the list of odd numbers to create a list of primes:
my @primes = ();
foreach my $number (@odds) {
    my $is_prime = 1;
    for (my $i = 2; $i < $number; $i++) {
        if ($number % $i == 0) {
            $is_prime = 0;
            last;
        }
    }
    push @primes, $number if $is_prime;
}

# Displays the primes one at a time:
foreach my $prime (@primes) {
    print "$prime\n";
}

# Displays the sizes of all three lists:
print "Size of \@numbers: ", scalar @numbers, "\n";
print "Size of \@odds: ", scalar @odds, "\n";
print "Size of \@primes: ", scalar @primes, "\n";
