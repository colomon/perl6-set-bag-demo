my %words := KeyBag.new;
for $*ARGFILES.slurp.comb(/\w+/).map(*.lc) -> $word {
    %words{$word}++;
}

for %words.pairs.sort(-*.value) -> (:key($word), :value($count)) {
    say "$word: $count";
}
