package Sbake::User;

use strict;
use warnings;

use base qw(Sbake::DBI);

__PACKAGE__->table ('user');
__PACKAGE__->columns (all => qw(username password admin));
__PACKAGE__->columns (Primary => qw(username));
__PACKAGE__->has_many (auth_token => qw(Sbake::Token::Auth));

sub new {
    my ($class, $username, $password, $admin) = @_;

}

1;
