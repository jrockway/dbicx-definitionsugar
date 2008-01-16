use inc::Module::Install;

name 'DBICx-DefinitionSugar';
all_from 'lib/DBICx/DefinitionSugar.pm';

requires 'Exporter';
build_requires 'Test::More';
build_requires 'Test::TableDriven';
build_requires 'ok';

WriteAll();
