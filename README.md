# Table
Perl6 module for converting a table of data into a nested hash

For example, read this table:

| item | ID | phone |
| ---  | --- | --- |
| foo | A | 1 |
| bar | B | 2 |
| baz | C | 3 |

Into a hash equivalent to this:

    my %hash = (
                       foo  => { ID => 'A', phone => '1', },
                       bar  => { ID => 'B', phone => '2', },
                       baz  => { ID => 'C', phone => '3', },
                   );
