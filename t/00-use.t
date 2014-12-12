#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 1;


BEGIN {
	use_ok 'MojoX::Model::DBIC' or print("Bail out!\n");
}

diag "Testing MojoX::Model::DBIC $MojoX::Model::DBIC::VERSION, Perl $], $^X";
