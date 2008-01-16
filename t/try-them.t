use strict;
use warnings;
use DBICx::DefinitionSugar;
use Test::TableDriven (
    try => [ 
        [[INTEGER_PRIMARY_KEY()] => [
            data_type => 'INTEGER',
            is_auto_increment => 1,
            is_nullable => 0,
        ]],
    ]
);

sub try { $_[0] }

runtests;


