use v6.d;

unit module CSV::Create;

sub to-csv(@lines) is export {
    my @formatted-lines;
    for @lines -> @line {
        my @formatted-fields;
        for @line.list -> $field {
            # Convert to a string.
            my Str $value = ~$field;

            # Quote value when necessary;
            if $value ~~ /<[\s,"]>/ {
                $value = q{"} ~ $value.subst(q{"}, q{""}, :global) ~ q{"};
            }
            @formatted-fields.push: $value;
        }

        @formatted-lines.push: @formatted-fields.join(',');
    }

    return @formatted-lines.join("\n");
}
