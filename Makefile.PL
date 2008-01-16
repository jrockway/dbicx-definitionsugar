use inc::Module::Install;

name 'DBICx-DefinitionSugar';
all_from 'lib/DBICx/DefinitionSugar.pm';

build_requires 'Test::More';
build_requires 'ok';

WriteAll();
