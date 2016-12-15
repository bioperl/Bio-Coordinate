use strict;
use warnings;
package Bio::Coordinate;

# ABSTRACT: Modules for working with biological coordinates
# AUTHOR:   Heikki Lehvaslaiho <heikki@bioperl.org>
# OWNER:    Heikki Lehvaslaiho
# LICENSE:  Perl_5
# CONTRIBUTOR: Ewan Birney <birney@ebi.ac.uk>

=head1 SYNOPSIS

  # create Bio::Coordinate::Pairs or other Bio::Coordinate::MapperIs somehow
  $pair1; $pair2;

  # add them into a Collection
  $collection = Bio::Coordinate::Collection->new;
  $collection->add_mapper($pair1);
  $collection->add_mapper($pair2);

  # create a position and map it
  $pos = Bio::Location::Simple->new (-start => 5, -end => 9 );
  $res = $collection->map($pos);
  $res->match->start == 1;
  $res->match->end == 5;

  # if mapping is many to one (*>1) or many-to-many (*>*)
  # you have to give seq_id not get unrelevant entries
  $pos = Bio::Location::Simple->new
      (-start => 5, -end => 9 -seq_id=>'clone1');

=head1 DESCRIPTION

Bio::Coordinate classes are used for working with various biological
coordinate systems.  See L<Bio::Coordinate::Collection> and
L<Bio::Collection::Pair> for examples.

=cut

1;
