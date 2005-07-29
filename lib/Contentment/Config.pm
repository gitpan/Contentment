# This file was automatically generated. DO NOT EDIT!!!
# You should edit lib/Contentment/Config.pm.in, instead.

package Contentment::Config;

use strict;
use warnings;

our $VERSION = '0.02';

# We don't want a constant subroutine because it screams bloody murder durings
# tests and that's just ugly. Inlining won't really give us that much anyway
# since this method should only be called a couple times when looking for the
# configuration files.
sub ETC_DIR { '/usr/local/Contentment/etc' }

1;
