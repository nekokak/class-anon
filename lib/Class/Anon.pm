package Class::Anon;
use strict;
use warnings;

our $VERSION = '0.01';

sub create_anon_class {
    my ($class, $pkg, $base) = @_;

    {
        no strict 'refs';
        @{"$pkg\::ISA"} = $base;
    }
    return $pkg;
}


=head1 NAME

Class::Anon - generate anonymous class

=head1 SYNOPSIS

  use Class::Anon;
  my $anon_class = Class::Anon->create_anon_class('NewAnonClass','BaseClass');

=head1 DESCRIPTION

This module generate anonymous class.

=head1 AUTHOR

Atsushi Kobayashi <nekokak _at_ gmail dot com>

=head1 COPYRIGHT

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=cut

1;
