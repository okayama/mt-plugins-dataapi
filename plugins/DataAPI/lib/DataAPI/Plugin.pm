package DataAPI::Plugin;
use strict;

use Data::Dumper;

sub _callback_checker {
    my @result;
    for ( my $i = 1; $i <= scalar( $_ ); $i++ ) {
        push( @result,
              "$i: " . ( defined $_[ $i ]
                            ? ( ref( $_[ $i ] ) || $_[ $i ] )
                            : 'nothing'
                       ),
        );
    }
    MT->log( $_[ 0 ]->name . ': ' . Dumper \@result );
    1;
}

1;
