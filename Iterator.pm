package HTML::Seamstress::Iterator;

require 5.005_62;
use strict;
use warnings;

use Data::DRef;

our @ISA = qw(Data::DRef::MethodBased);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use HTML::Seamstress::Iterator ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.

our $VERSION = '0.01';


# Preloaded methods go here.

sub Next {
    my $self = shift;
    return shift @$self;
} 


sub _aref { 
    my ($self, $aref) = @_;
    
    warn "AREF: ", Data::Dumper::Dumper(\@_);

    bless $aref, 'HTML::Seamstress::Iterator';
}



1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

HTML::Seamstress::Iterator - Perl extension for blah blah blah

=head1 SYNOPSIS

  use HTML::Seamstress::Iterator;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for HTML::Seamstress::Iterator, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.


=head1 AUTHOR

A. U. Thor, a.u.thor@a.galaxy.far.far.away

=head1 SEE ALSO

perl(1).

=cut
