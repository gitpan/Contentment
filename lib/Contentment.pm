# This file was automatically generated. DO NOT EDIT!!!
# You should edit lib/Contentment.pm.in, instead.

package Contentment;

use strict;
use warnings;

use Carp;
use Log::Log4perl ':easy';
use YAML 'LoadFile';

our $VERSION = '0.009_001';

use constant ETC_DIR => '/Users/sterling/Library/Contentment/etc';

BEGIN {
	Log::Log4perl::easy_init($DEBUG);
}

sub dc { "(".shift(@_).") (".shift(@_).":".shift(@_).") " }
$SIG{__WARN__} = sub { Log::Log4perl::get_logger->warn(dc(caller),@_)  };
$SIG{__DIE__}  = sub { eval { Log::Log4perl::get_logger->fatal(dc(caller),@_) }; confess @_; };

=head1 NAME

Contentment - This is the main module of Contentment

=head1 DESCRIPTION

General configuration information and some general-purpose methods can be found in this module.

=over

=item $conf = Contentment->configuration

Reads the configuration files F<ETC_DIR/Contentment.defaults.conf> and F<ETC_DIR/Contentment.conf>.

=cut

my %configuration;
sub configuration {
	unless (%configuration) {
		my $defaults_file = ETC_DIR.'/Contentment.defaults.conf';
		my $locals_file   = ETC_DIR.'/Contentment.conf';

		my ($defaults, $locals);
		eval {
			$defaults = LoadFile($defaults_file);
			$locals   = LoadFile($locals_file);
		};

		if ($@) { die "Error loading configuration: $@" }

		%configuration = (%$defaults, %$locals);

		# Initialize Log4perl
		if (my $log4perl_conf = $configuration{log4perl_conf}) {
			Log::Log4perl::init($log4perl_conf);
		} else {
			Log::Log4perl::easy_init($DEBUG);
			warn 'No log4perl.conf specified. Sending DEBUG and above to STDERR.';
		}
	}
	
	return \%configuration;
}

=item my $result = Contentment->run_plugin($plugin, @args)

This method loads the given plugin C<$plugin> and runs it with the given C<@args> and returns the result C<$result>. The C<$plugin> variable is a complete package and method name. The method name is stripped and the package name is "used". Then, the method is called.

=cut

sub run_plugin {
	my $class = shift;
	my $plugin = shift;

	my ($package, $method) = $plugin =~ m/^(.*?)::(\w+)$/
		or die "Invalid plugin named $plugin";

	eval "use $package";
	warn "Problem loading plugin $package: $@" if $@;

	no strict 'refs';
	return $plugin->(@_);
}

=back

=head1 AUTHOR

Andrew Sterling Hanenkamp E<lt>hanenkamp@users.sourceforge.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2005 Andrew Sterling Hanenkamp. All Rights Reserved.

Contentment is distributed and licensed under the same terms as Perl itself.

=cut

1
