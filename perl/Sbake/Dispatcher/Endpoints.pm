package Sbake::Dispatcher::Endpoints;

use strict;
use warnings;

use base qw(Exporter);
our @EXPORT_OK = qw(uri2pkg);

my %endpoints = (
    login => 'Sbake::Login',
);

sub uri2pkg {
    my $uri = shift;
    $uri =~ s`^/|/$``;
    return $endpoints{$uri};
}

1;
