#!/usr/bin/perl

use Test;
use CSV::Create;

is to-csv([[1],[2]]), "1\n2", 'Simple integer';

is to-csv([[1,1], [2,2]]), "1,1\n2,2", 'Integer Pair';

is to-csv([['Quote" "Value',1,1.1,"Multiline\nValue"], [1,2,3,'Unicode: ऌऍ']]),
        qq{"Quote"" ""Value",1,1.1,"Multiline\nValue"\n1,2,3,"Unicode: ऌऍ"}, 'complex example';

done-testing;
