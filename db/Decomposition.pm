package Decomposition;

=head2

  Tags

=cut

use strict;
use parent 'main';
my $MODULE = 'Decomposition';

#**********************************************************
# Init
#**********************************************************
sub new{
  my $class = shift;
  my ($db, $admin, $CONF) = @_;

  my $self = { };
  bless( $self, $class );

  $admin->{MODULE} = $MODULE;
  $self->{db} = $db;
  $self->{admin} = $admin;
  $self->{conf} = $CONF;

  return $self;

}



#**********************************************************
# add()
#**********************************************************
sub add{
  my $self = shift;
  my ($attr) = @_;
  use Data::Dumper;
  print Dumper $attr;

  $self->query_add( 'DECOMPOSITION', $attr );

  return $self;
}

#**********************************************************
# Delete user info from all tables
# del(attr);
#**********************************************************
sub del{
  my $self = shift;
  my ($id) = @_;

  $self->query_del( 'decomposition', { ID => $id } );

  return $self->{result};
}

#**********************************************************
# list()
#**********************************************************
sub list{
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';
  #my $PG        = ($attr->{PG})        ? $attr->{PG}             : 0;
  #my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? int($attr->{PAGE_ROWS}) : 25;

  # my $WHERE = $self->search_former( $attr, [
  #     [ 'NAME', 'STR', 'name', 1 ],
  #     [ 'DIFFICULT', 'int', 'difficult', 1 ],
  #     [ 'ID', 'INT', 'id', ],
  #   ],
  #   { WHERE => 1,
  #   }
  # );

  $self->query2( "SELECT id, name, difficult
     FROM decomposition;",
    undef,
    {COLS_NAME => 1}
  );

  return $self->{list};
}