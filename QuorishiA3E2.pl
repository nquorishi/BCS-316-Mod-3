#NQ-BCS316
#Creates an array with a list of names in it, 
#and sorts them in ASCII order, displaying the result.   
use 5.23.0;
use strict;
use warnings;

# Create an array of names:
my @names = ('Muhammad', 'Ali', 'LeBron', 'James', 'Caillou');

# Sort the array in ASCII order:
# "sort" arranges the strings of the array in ASCII order. The function makes it easier!
my @sorted_names = sort @names;

# Display the sorted names:
foreach my $name (@sorted_names) {
    print "$name\n";
}
