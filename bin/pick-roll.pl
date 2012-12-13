my $bag = bag "red" => 2, "blue" => 10;
say $bag.roll(10);
say $bag.pick(*).join(" ");

$bag = bag "red" => 20000000000000000001, "blue" => 100000000000000000000;
say $bag.roll(10);
say $bag.pick(10).join(" ");