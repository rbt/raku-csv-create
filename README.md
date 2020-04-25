# NAME

CSV::Create - Generate a CSV file from array structure input

# SYNOPSIS

```raku
  use CSV::Create
  
  my @lines = ['rec1', 'values', 1, 1.1], ['rec2', 'string', 2, 2.2]
  my $csv = to-csv(@lines);
```

# DESCRIPTION

Provide basic CSV creation capabilities in pure raku. This includes escaping
data.

## AUTHOR

Rod Taylor <rbt@cpan.org>

## LICENSE

You can use and distribute this module under the terms of the The Artistic License 2.0. See the LICENSE file included in this distribution for complete details.
