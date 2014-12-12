#!/usr/bin/env perl

use strict;
use warnings;

use ExtUtils::MakeMaker;


WriteMakefile(
	NAME             => 'MojoX::Model::DBIC',
	AUTHOR           => 'Denis Ibaev <dionys@cpan.org>',
	VERSION_FROM     => 'lib/MojoX/Model/DBIC.pm',
	ABSTRACT_FROM    => 'lib/MojoX/Model/DBIC.pm',
	LICENSE          => 'perl',
	MIN_PERL_VERSION => '5.010001', # like Mojolicious
	BUILD_REQUIRES   => {
#		'Test::Deep'   => 0,
		'Test::More'   => 0,
	},
	PREREQ_PM        => {
		'DBIx::Class'  => 0,
		'Mojolicious'  => 0,
		'MojoX::Model' => 0,
	},
	META_MERGE       => {
		resources => {
			license     => 'http://dev.perl.org/licenses/',
			repository  => 'http://github.com/dionys/mojox-model-dbic',
			bugtracker  => 'http://github.com/dionys/mojox-model-dbic/issues',
		},
		no_index  => {directory => ['t']},
	},
	dist             => {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
	clean            => {FILES => 'MojoX-Model-DBIC-*'},
	test             => {TESTS => 't/*.t'},
);
