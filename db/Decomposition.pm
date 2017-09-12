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

=head2  add()

=cut

#**********************************************************
sub add{
  my $self = shift;
  my ($attr) = @_;

  $self->query_add( 'decomposition', $attr );

  return $self;
}

#**********************************************************

=head2  del()

=cut

#**********************************************************
sub del{
  my $self = shift;
  my ($id) = @_;

  $self->query_del( 'decomposition', { ID => $id } );

  return $self->{result};
}

#**********************************************************

=head2 edit_element($attr) - list whith WHERE

=cut

#**********************************************************
sub edit_list {
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';

  #my $PG        = ($attr->{PG})        ? $attr->{PG}             : 0;
  #my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? int($attr->{PAGE_ROWS}) : 25;

  my $WHERE = $self->search_former( $attr, [
      [ 'NAME', 'STR', 'name', 1 ],
      [ 'DIFFICULT', 'int', 'difficult', 1 ],
      [ 'ID', 'INT', 'id', 1],
    ],
    { WHERE => 1,
    }
  );

  $self->query2(
    "SELECT name, difficult
     FROM decomposition
     $WHERE;",
    undef,
    { COLS_NAME => 1 }
  );

  return $self->{list};
}

#**********************************************************

=head2 change_elementS($attr) -  Change

=cut

#**********************************************************
sub change {
  my $self = shift;
  my ($attr) = @_;

  $self->changes2(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'decomposition',
      DATA         => $attr,
    }
  );

  return $self->{result};
}

#**********************************************************

=head2 change_elementS($attr) -  List

=cut

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