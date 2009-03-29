use strict;
use warnings;
use Test::More tests => 14;
use Grid::Transform;

my $g = Grid::Transform->new([1..27], rows=>5, columns=>6);

ok($g->rows(6), 'setting new rows');
is($g->rows, 6, 'checking new rows');
is_deeply(scalar $g->grid, [1..27, ('')x9], 'resulting scalar grid from new rows');
is_deeply([$g->grid], [1..27, ('')x9], 'resulting grid from new rows');

ok($g->columns(4), 'setting new columns');
is($g->columns, 4, 'checking new columns');
is_deeply([$g->grid], [1..24], 'resulting grid from new columns');

ok($g->columns(6));
is_deeply([$g->grid], [1..27, ('')x9], 'checking if resize is non-destructive');

ok($g->grid([1..50]), 'setting new grid');
is_deeply([$g->grid], [1..36], 'checking new grid');
ok($g->columns(10), 'setting new columns');
ok($g->rows(5), 'setting new rows');
is_deeply([$g->grid], [1..50], 'checking if resize is non-destructive');
