package Sbake::Dispatcher;

use strict;
use warnings;

use Sbake::Dispatcher::Handler;

sub handler {
    return (new Sbake::Dispatcher::Handler @_)->status;
}

1;
