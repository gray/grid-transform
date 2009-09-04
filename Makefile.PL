use strict;
use warnings;
use ExtUtils::MakeMaker;

my %conf = (
    NAME          => 'Grid::Transform',
    AUTHOR        => 'gray <gray@cpan.org>',
    LICENSE       => 'perl',
    VERSION_FROM  => 'lib/Grid/Transform.pm',
    ABSTRACT_FROM => 'lib/Grid/Transform.pm',
    PREREQ_PM     => { 'Test::More' => 0 },
    META_MERGE    => {
        resources => {
            repository => 'http://github.com/gray/grid-transform',
        }
    },
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean         => { FILES => 'Grid-Transform-*' },
);

unless (eval { ExtUtils::MakeMaker->VERSION(6.46) }) {
    delete $conf{META_MERGE};
}

WriteMakefile(%conf);
