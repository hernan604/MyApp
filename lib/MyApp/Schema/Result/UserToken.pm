use utf8;
package MyApp::Schema::Result::UserToken;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Result::UserToken

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=item * L<DBIx::Class::PassphraseColumn>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp", "PassphraseColumn");

=head1 TABLE: C<user_token>

=cut

__PACKAGE__->table("user_token");

=head1 ACCESSORS

=head2 mobile_number

  data_type: 'numeric'
  is_nullable: 1
  size: [14,0]

=head2 test_token

  data_type: 'text'
  is_nullable: 1

=head2 auth_token

  data_type: 'text'
  is_nullable: 1

=head2 test_token_valid_until

  data_type: 'timestamp'
  default_value: (now() + '00:05:00'::interval)
  is_nullable: 1

=head2 auth_token_valid_until

  data_type: 'timestamp'
  default_value: (now() + '02:00:00'::interval)
  is_nullable: 1

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'user_token_id_seq'

=cut

__PACKAGE__->add_columns(
  "mobile_number",
  { data_type => "numeric", is_nullable => 1, size => [14, 0] },
  "test_token",
  { data_type => "text", is_nullable => 1 },
  "auth_token",
  { data_type => "text", is_nullable => 1 },
  "test_token_valid_until",
  {
    data_type     => "timestamp",
    default_value => \"(now() + '00:05:00'::interval)",
    is_nullable   => 1,
  },
  "auth_token_valid_until",
  {
    data_type     => "timestamp",
    default_value => \"(now() + '02:00:00'::interval)",
    is_nullable   => 1,
  },
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "user_token_id_seq",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-07-28 18:08:32
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eCd2F978FKuTOWdDXEB+dw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
