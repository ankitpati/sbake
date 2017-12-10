package Sbake::DBI;

use base qw(Class::DBI);

use Sbake::Config qw(getconfig);

__PACKAGE__->connection (
    'dbi:mysql' .
    ':database='.getconfig('SBAKE_DATABASE') .
    ':host='    .getconfig('SBAKE_HOSTNAME') ,
    getconfig ('SBAKE_USERNAME'),
    getconfig ('SBAKE_PASSWORD')
);

1;
