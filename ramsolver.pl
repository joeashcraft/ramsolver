#!/usr/bin/perl --
## USAGE
##   $0 total_ram_to_use mysql_global mysql_per apache_per
##

use strict;
use warnings;

my $ramSolver = ramSolver ($ARGV[0], $ARGV[1], $ARGV[2], $ARGV[3]);
print "MaxClients and max-connections should be no greater than " . int($ramSolver) . ".\n";

sub ramSolver {
    my ($total_ram_to_use, $mysql_global, $mysql_per, $apache_per) = @_;
    return ( $total_ram_to_use - $mysql_global) / ( $mysql_per + $apache_per);
}