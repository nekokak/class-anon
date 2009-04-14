use strict;
use warnings;
use Class::Anon;
use Test::Declare;

plan tests => blocks;

describe 'Class::Anon test' => run {
    test 'create_anon_class' => run {
        my $anon_class = Class::Anon->create_anon_class('Japan::Kanagawa','Japan');
        is $anon_class, 'Japan::Kanagawa';
        is $anon_class->me, 'japan';
        my $obj = $anon_class->new;
        isa_ok $obj, 'Japan';
    };
};

package Japan;
sub new { bless {}, shift }
sub me { 'japan' }

