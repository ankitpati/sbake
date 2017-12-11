package Sbake::Token::Auth;

use strict;
use warnings;

use base qw(Sbake::DBI);

__PACKAGE__->table ('auth_token');
__PACKAGE__->columns (all => qw(auth_token username));
__PACKAGE__->columns (Primary => qw(auth_token));
__PACKAGE__->has_a (username => qw(Sbake::User));

sub new {
    my ($class, $auth_token, $username) = @_;

}

1;
