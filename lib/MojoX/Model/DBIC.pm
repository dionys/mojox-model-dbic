package MojoX::Model::DBIC;

use Mojo::Base 'MojoX::Model';

use Mojo::Loader ();


has schema_class => undef;

has connect_info => sub { {} };

has schema => undef;


sub new {
	my $self = shift()->SUPER::new(@_);

	return $self if $self->schema;

	my $err = Mojo::Loader->new->load($self->schema_class);

	die($err) if $err;

	$self->schema($self->schema_class->connect($self->connect_info));

	return $self;
}

sub resultset { shift()->schema->resultset(@_); }

sub storage { shift()->schema->storage(@_); }

sub txn_do { shift()->schema->txn_do(@_); }

sub txn_scope_guard { shift()->schema->txn_scope_guard(@_); }


1;
