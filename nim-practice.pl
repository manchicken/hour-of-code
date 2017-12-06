#!/usr/bin/env perl
use feature 'say';

$highest_number = 10;

sub get_input {
	say "Pick a number between 0 and ${highest_number}";
	$input = int(<STDIN>);
}

$secret_number = int(rand(10));
$current_guess = get_input();

while ($current_guess != $secret_number) {
	say "Too high" if ($current_guess > $secret_number);
	say "Too low" if ($current_guess < $secret_number);
	$current_guess = get_input();
}

say "You got it! The number was ${secret_number}";