#!/usr/bin/perl

use strict;
use warnings;

use lib '../../../blib/lib';
use Contentment;

Contentment->begin;
Contentment->handle_cgi;
Contentment->end;

exit(0);
