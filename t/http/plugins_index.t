# vim: set ft=perl :

use strict;
use warnings;
use Contentment::Test;
use Test::More tests => 15;

my $body = GET('/plugins/index/list.txt')->content;

like($body, qr{^ - A}m);
like($body, qr{^ - E}m);
like($body, qr{^ - I}m);
like($body, qr{^    - /index\.html}m);
like($body, qr{^    - /cgi-bin/init\.yml}m);
like($body, qr{^ - O}m);
like($body, qr{^ - U}m);

$body = GET('/plugins/index/search.txt')->content;

like($body, qr{^ - A}m);
unlike($body, qr{^ - E}m);
like($body, qr{^ - I}m);
like($body, qr{^    - /index\.html}m);
like($body, qr{^    - /cgi-bin/init\.yml}m);
unlike($body, qr{^ - O}m);
unlike($body, qr{^ - U}m);
unlike($body, qr{^ - F}m);
