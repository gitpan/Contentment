#!/usr/bin/perl

# This file was automatically generated. DO NOT EDIT!!!
# You should edit docroots/htdocs/cgi-bin/handler.cgi.in, instead.


use strict;
use warnings;

use lib '/Users/sterling/Library/Contentment/lib';

use Contentment;
use Contentment::VFS;
use Contentment::VFSResolver;
use HTML::Mason::CGIHandler;
use Log::Log4perl;

my $conf = Contentment::configuration;
my $log = Log::Log4perl->get_logger("cgi_handler");

$log->info("Handling request $ENV{PATH_INFO}");

my $h = new HTML::Mason::CGIHandler->new (
	data_dir       => $conf->{temp_dir},
	comp_root      => $conf->{comp_dirs},
	allow_globals  => [ qw(
		$base $full_base @comp_dirs $url 
		$req_path %conf $log $context $vfs
		$root_file
	) ],
	resolver_class => 'Contentment::VFSResolver',
);

my $req_path = $ENV{PATH_INFO};
$req_path =~ s#^$conf->{base}/#/#;

$h->interp->set_global('$base'      => $conf->{base});
$h->interp->set_global('@comp_dirs' => @{ $h->interp->comp_root });
$h->interp->set_global('%conf'      => %$conf);
$h->interp->set_global('$log'       => $log);
$h->interp->set_global('$req_path'  => $req_path);
$h->interp->set_global('$vfs'       => Contentment::VFS->new);

$ENV{PATH_INFO} =~ s#^$conf->{base}/#/content/input/#;
$log->debug("Mason will handle request as $ENV{PATH_INFO}");

$h->handle_request;

exit(0);