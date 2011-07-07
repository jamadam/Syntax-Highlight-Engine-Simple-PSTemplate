package Syntax::Highlight::Engine::Simple::PSTemplate;
use strict;
use warnings;
use base qw(Syntax::Highlight::Engine::Simple);
#use version;
our $VERSION = '0.01';

### ----------------------------------------------------------------------------
### set syntax
### ----------------------------------------------------------------------------
sub setSyntax {
	
	shift->{syntax} =
		[
			{
				class => 'psttag',
				regexp => q!(?s)(?<=<%).+?(?=%>)!,
			},
			{
				class => 'tag',
				regexp => q!(?s)(?<=<).+?(?=>)!,
			},
			{
				class => 'quote',
				regexp => q!(?s)'.*?'!,
				container => 'tag',
			},
			{
				class => 'wquote',
				regexp => q!(?s)".*?"!,
				container => 'tag',
			},
			{
				class => 'number',
				regexp => '\b\d+\b',
				container => 'tag',
			},	
			{
				class => 'comment',
				regexp => '(?s)<!--.*?-->',
			},
			{
				class => 'url',
				regexp => q!s?https?://[-_.\!~*'()a-zA-Z0-9;/?:@&=+$,%#]+!,
			},
		];
}

return 1;

__END__

=head1 NAME

Syntax::Highlight::Engine::Simple::PSTemplate - 

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 SEE ALSO

=over

=item L<Syntax::Highlight::Engine::Simple>

=back

=head1 AUTHOR

Sugama Keita  C<< <sugama@jamadam.com> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2008, Sugama Keita C<< <sugama@jamadam.com> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See I<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=cut
