#!/bin/env perl6

use Test;
use lib 'lib';
use Table;

my %expected = (
                   foo  => { ID => 'A', phone => '1', },
                   bar  => { ID => 'B', phone => '2', },
                   baz  => { ID => 'C', phone => '3', },
               );

my %result = parse-table( input-data() );

is-deeply %result, %expected, 'created hash from table';

done-testing;

sub input-data
{
    q:to/END/;
        item  ID  phone
        foo      A  1
        bar      B  2
        baz      C  3
        END
}
