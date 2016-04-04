#!/bin/env perl6

sub parse-table ( $text ) is export
{
    my %hash;
    my @columns;
    for $text.lines -> $line {

        FIRST {
            # grab the values in this row, ignoring the first
            ($, @columns) = $line.split(/\s+/);

            # Skip remainder of this loop iteration
            next;
        }

        # get row name and values
        my ($row, @values) = $line.split(/\s+/);

        die "Duplicate row name '$row'" if defined %hash{$row};

        # capture values for each column
        %hash{$row}{@columns} = @values;
    }

    return %hash;
}
