package DBICx::DefinitionSugar;
use strict;
use warnings;

use base 'Exporter';
our @EXPORT = qw/AUTO_INCREMENT INTEGER VARCHAR NOT_NULL NULL 
                 INTEGER_PRIMARY_KEY/;

sub AUTO_INCREMENT() { is_auto_increment => 1 }
sub INTEGER()        { data_type => 'INTEGER' }
sub VARCHAR(;$)      { my$a=$_[0]; data_type => $a ? 'VARCHAR' : "VARCHAR($a)" }
sub NOT_NULL()       { is_nullable => 0 }
sub NULL             { is_nullable => 1 }

# misnamed.
sub INTEGER_PRIMARY_KEY() { INTEGER, AUTO_INCREMENT, NOT_NULL }

1;
__END__

=head1 NAME

DBICx::DefinitionSugar - hashes are a pain to type.  functions can haz?
