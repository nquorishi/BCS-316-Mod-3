#NQ-BCS316
#Creates an array which holds a list of Video Games, 
#consisting of title, the year it was released, 
#platform (NES, XBOX One, etc) and publisher (in that order). 
#Add at least ten games to the list. 
#Then, use the split function and a for or foreach loop to display 
#the publisher followed by the title and platform for each list element.  
use 5.23.0;
use warnings;
use strict;

# Creates an array of video games:
my @games = (
    "Super Mario Bros|1985|NES|Nintendo",
    "The Legend of Zelda|1986|NES|Nintendo",
    "Call of Duty: Warzone|2022|PlayStation 4|Activision",
    "Call of Duty: Modern Warfare 2|2007|Playstation 3|Activision",
    "Grand Theft Auto III|2001|PlayStation 2|Rockstar",
    "Grand Theft Auto VI|2024|PlayStation 5|Rockstar",
    "The Elder Scrolls V: Skyrim|2011|PlayStation 3|Bethesda",
    "Minecraft|2011|PC|Mojang",
    "Fortnite|2017|PC|Epic Games",
    "Red Dead Redemption 2|2018|PlayStation 4|Rockstar",
);

# "foreach" loop - splits each game string and display the publisher, title, and platform:
foreach my $game (@games) {
    my ($title, $year, $platform, $publisher) = split /\|/, $game;
    print "$publisher - $title ($platform)\n";
}
