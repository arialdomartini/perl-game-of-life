package World;
use Moose;

has width => (
  is => 'ro',
  isa => 'Num',
  required => 1,
);

has height => (
  is => 'ro',
  isa => 'Num',
  required => 1,
);

has cells => (
  builder => '_build_cells',
  is => 'ro',
  isa => 'ArrayRef[ArrayRef[Bool]]',
  lazy => 1,
);

sub _build_cells {
  my $self = shift;
  my $width = $self->width;
  my $height = $self->height;
  my @cells;
  for(my $i=0; $i<$width; $i++) {
      for(my $j=0; $j<$height; $j++) {
          $cells[$i][$j] = 0;
      }
  }

  return \@cells;
}

sub giveLife {
    my ($self, $x, $y) = @_;
    my $cells = $self->cells;
    
    $cells->[$x]->[$y] = 1;
}

sub isAlive {
    my ($self, $x, $y) = @_;
    my $cells = $self->cells;

    $cells->[$x]->[$y];
}

sub nextStep {

}

return 1;

12
