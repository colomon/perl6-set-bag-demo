my $hamlet-words = bag slurp("data/cherry-tree").comb(/\w+/).map(*.lc);

for $hamlet-words.keys.sort({ $hamlet-words{$^b} <=> $hamlet-words{$^a} }) -> $word {
    say "$word: { $hamlet-words{$word} }";
}