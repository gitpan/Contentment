package Contentment::Setting;

use strict;
use warnings;

our $VERSION = '0.12';

use base 'Oryx::Class';

=head1 NAME

Contentment::Setting - A Contentment plugin for storing configuration

=head1 DESCRIPTION

This module is required by the Contentment core and is used to store settings and configuration information in the database.

=cut

our $schema = {
	attributes => [
		{
			name => 'setting_name',
			type => 'String',
		},
		{
			name => 'setting_value',
			type => 'Complex',
		},
	],
};

# XXX Due to the fact that this plugin is required by Contentment as soon as it
# is loaded, we just automatically deploy it. Perhaps this ought to be a core
# fixture because of this, but I've made it a plugin because it depends upon
# the database and anything that depends on the database should be plugged IMO.
__PACKAGE__->auto_deploy(1);

=head2 CONTEXT

This class adds the following methods to the context:

=over

=item $settings = $context-E<gt>settings

Returns a reference to a hash containing all the settings. Settings are permanently saved to the database when changed.

This hash can be used to store most complex types. It uses L<YAML> to encode all the values, which can encode just about anything.

However, there are a few caveats to be careful about:

=over

=item *

References to blessed items or types other than scalars, hashes, or arrays might not store and load again quite as you expect. In particular, objects can be blessed into classes that aren't even loaded.

=item *

Be careful modifying deep parts of the code without explicitly notifying the settings object. For example:

  my $settings = $context->settings;
  my %hash = ( foo => 1, bar => 2 );

  # Works great!
  $settings->{blah} = \%hash;

  $hash{baz} = 3;

  # Bad stuff! Outputs: foo, bar
  # $settings doesn't know about baz!
  print(join(', ', keys %$settings),"\n");

  # Make sure you always notify the hash of deep changes:
  $settings->{blah} = \%hash;

=cut

sub Contentment::Context::settings {
	my $class = shift;
	tie my %hash, 'Contentment::Setting::Tie';
	return \%hash;
}

=back

=cut

package Contentment::Setting::Tie;

sub TIEHASH {
	my $class = shift;
	return bless {}, $class;
}

sub FETCH {
	my $self = shift;
	my $key  = shift;

	my ($setting) = Contentment::Setting->search({ setting_name => $key });
	return $setting ? $setting->setting_value : undef;
}

sub STORE {
	my $self  = shift;
	my $key   = shift;
	my $value = shift;

	my ($setting) = Contentment::Setting->search({ setting_name => $key });
	if ($setting) {
		$setting->setting_value($value);
		$setting->update;
		$setting->commit;
	} else {
		$setting = Contentment::Setting->create({
			setting_name  => $key,
		});
		$setting->setting_value($value);
		$setting->update;
		$setting->commit;
	}
	return $value;
}

sub DELETE {
	my $self = shift;
	my $key  = shift;

	my ($setting) = Contentment::Setting->search({ setting_name => $key });
	if ($setting) {
		my $value = $setting->setting_value;
		$setting->delete;
		$setting->commit;
		return $value;
	} else {
		return undef;
	}
}

sub CLEAR { 
	# There's no way in hell I'm letting someone do something this stupid, this
	# easily. Forget it.
	die "Have you lost your mind? I will not help you delete all settings.";
}

sub EXISTS {
	my $self = shift;
	my $key  = shift;

	my ($setting) = Contentment::Setting->search({ setting_name => $key });
	return $setting ? 1 : '';
}

sub FIRSTKEY {
	my $self = shift;

	$self->{records} = [ Contentment::Setting->search ];
    $self->{position} = 0;
	if (my $setting = $self->{records}[$self->{position}++]) {
		return $setting->setting_name;
	} else {
		return undef;
	}
}

sub NEXTKEY {
	my $self = shift;

	if (my $setting = $self->{records}[$self->{position}++]) {
		return $setting->setting_name;
	} else {
		return undef;
	}
}

sub SCALAR {
	my $self = shift;
	return scalar(Contentment::Setting->search);
}

=back

=head1 AUTHOR

Andrew Sterling Hanenkamp, E<lt>hanenkamp@users.sourceforge.netE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright 2005 Andrew Sterling Hanenkamp. All Rights Reserved.

Contentment is distributed and licensed under the same terms as Perl itself.

=cut

1
