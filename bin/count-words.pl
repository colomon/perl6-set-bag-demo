my $words = bag $*ARGFILES.slurp.comb(/\w+/).map(*.lc);

for $words.pairs.sort(-*.value) -> (:key($word), :value($count)) {
    say "$word: $count";
}