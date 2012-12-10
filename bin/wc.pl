my $bag = bag $*IN.slurp.comb(/\w+/).map(*.lc);

for $bag.keys.sort({ $bag{$^b} <=> $bag{$^a} }) -> $word {
    say "$word: { $bag{$word} }";
}