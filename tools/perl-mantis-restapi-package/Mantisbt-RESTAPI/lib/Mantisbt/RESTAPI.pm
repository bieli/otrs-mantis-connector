package Mantisbt::RESTAPI;

use 5.010001;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration   use Mantisbt::RESTAPI ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

);

our $VERSION = '0.01';


# Preloaded methods go here.

sub new
{
    my $class = shift;
    my $self = {
        _username => shift,
        _password  => shift
    };

    # Print all the values just for clarification.
    print "username is $self->{_username}\n";
    print "password is $self->{_password}\n";

    bless $self, $class;
    return $self;
}

sub setUserName {
    my ( $self, $username ) = @_;
    $self->{_username} = $username if defined($username);
    return $self->{_username};
}

sub getUserName {
    my( $self ) = @_;
    return $self->{_username};
}

sub setPassword {
    my ( $self, $password ) = @_;
    $self->{_password} = $password if defined($password);
    return $self->{_password};
}

sub getPassword {
    my( $self ) = @_;
    return $self->{_password};
}

sub getVersion {
    my( $self ) = @_;

    my $result = "1.2.11-test-perl-module";

    return $result;
}

sub addIssue {
    my( $self ) = @_;

    my $result = { data: 123456789 }

    return $result;
}





1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Mantisbt::RESTAPI - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Mantisbt::RESTAPI;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Mantisbt::RESTAPI, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

bieli, E<lt>bieli@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by bieli

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
