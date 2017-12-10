package Sbake::User;

use strict;
use warnings;

use base qw(Sbake::DBI);

__PACKAGE__->table ('user');
__PACKAGE__->columns (all => qw(username password));
__PACKAGE__->columns (Primary => qw(username));

sub new {
    my ($class, $username, $password) = @_;

}

1;
