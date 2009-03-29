use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Grid::Transform',
    AUTHOR        => 'gray <gray@cpan.org>',
    LICENSE       => 'perl',
    VERSION_FROM  => 'lib/Grid/Transform.pm',
    ABSTRACT_FROM => 'lib/Grid/Transform.pm',
    PREREQ_PM     => { 'Test::More' => 0 },
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean         => { FILES => 'Grid-Transform-*' },
);
