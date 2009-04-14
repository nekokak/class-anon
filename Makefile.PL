use inc::Module::Install;
name 'Class-Anon';
all_from 'lib/Class/Anon.pm';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
