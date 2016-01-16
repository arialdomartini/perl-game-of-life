use strict;
use warnings;
use Test::More;

use World;

my $world = World->new( width => 3, height => 4 );

is $world->width, 3, 'width';
is $world->height, 4, 'height';

ok ! $world->isAlive(1, 1), 'is not alive by default';

$world->giveLife(1, 1);
ok $world->isAlive(1, 1), 'isAlive';

$world->nextStep();
ok ! $world->isAlive(1, 1), 'nextStep';

done_testing;

