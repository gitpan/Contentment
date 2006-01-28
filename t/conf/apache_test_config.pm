# WARNING: this file is generated, do not edit
# 01: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestConfig.pm:940
# 02: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestConfig.pm:958
# 03: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestConfig.pm:1809
# 04: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestRun.pm:508
# 05: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestRunPerl.pm:90
# 06: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestRun.pm:726
# 07: /Library/Perl/5.8.6/darwin-thread-multi-2level/Apache/TestRun.pm:726
# 08: /Users/sterling/projects/Contentment/Contentment-0.011_031/t/TEST:17

package apache_test_config;

sub new {
    bless( {
                 'verbose' => undef,
                 'hostport' => 'localhost:8529',
                 'postamble' => [
                                  '<IfModule mod_mime.c>
    TypesConfig "/private/etc/httpd/mime.types"
</IfModule>
',
                                  'Include "/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/extra.conf"',
                                  '<IfModule mod_perl.c>
    PerlPassEnv APACHE_TEST_TRACE_LEVEL
</IfModule>
',
                                  '<IfModule mod_perl.c>
    PerlRequire /Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/modperl_startup.pl
</IfModule>
',
                                  ''
                                ],
                 'mpm' => '',
                 'inc' => [
                            '/Users/sterling/projects/Contentment/Contentment-0.011_031/blib/lib',
                            '/Users/sterling/projects/Contentment/Contentment-0.011_031/blib/arch'
                          ],
                 'APXS' => '/usr/sbin/apxs',
                 '_apxs' => {
                              'LIBEXECDIR' => '/usr/libexec/httpd',
                              'SYSCONFDIR' => '/private/etc/httpd',
                              'TARGET' => 'httpd',
                              'PREFIX' => '/usr',
                              'SBINDIR' => '/usr/sbin'
                            },
                 'save' => 1,
                 'vhosts' => {},
                 'httpd_basedir' => '/usr',
                 'server' => bless( {
                                      'run' => bless( {
                                                        'conf_opts' => {
                                                                         'verbose' => undef,
                                                                         'save' => 1
                                                                       },
                                                        'test_config' => $VAR1,
                                                        'tests' => [],
                                                        'opts' => {
                                                                    'breakpoint' => [],
                                                                    'postamble' => [],
                                                                    'preamble' => [],
                                                                    'bugreport' => 1,
                                                                    'req_args' => {},
                                                                    'header' => {}
                                                                  },
                                                        'argv' => [],
                                                        'server' => $VAR1->{'server'}
                                                      }, 'Apache::TestRunPerl' ),
                                      'port_counter' => 8529,
                                      'mpm' => '',
                                      'version' => 'Apache/1.3.33',
                                      'rev' => 1,
                                      'name' => 'localhost:8529',
                                      'config' => $VAR1
                                    }, 'Apache::TestServer' ),
                 'postamble_hooks' => [
                                        'configure_inc',
                                        'configure_trace',
                                        'configure_pm_tests_inc',
                                        'configure_startup_pl',
                                        'configure_pm_tests',
                                        sub { "DUMMY" }
                                      ],
                 'inherit_config' => {
                                       'ServerRoot' => '/usr',
                                       'ServerAdmin' => '',
                                       'TypesConfig' => '/private/etc/httpd/mime.types',
                                       'DocumentRoot' => '/Library/WebServer/Documents',
                                       'LoadModule' => [
                                                         [
                                                           'config_log_module',
                                                           'libexec/httpd/mod_log_config.so'
                                                         ],
                                                         [
                                                           'mime_module',
                                                           'libexec/httpd/mod_mime.so'
                                                         ],
                                                         [
                                                           'negotiation_module',
                                                           'libexec/httpd/mod_negotiation.so'
                                                         ],
                                                         [
                                                           'includes_module',
                                                           'libexec/httpd/mod_include.so'
                                                         ],
                                                         [
                                                           'autoindex_module',
                                                           'libexec/httpd/mod_autoindex.so'
                                                         ],
                                                         [
                                                           'dir_module',
                                                           'libexec/httpd/mod_dir.so'
                                                         ],
                                                         [
                                                           'cgi_module',
                                                           'libexec/httpd/mod_cgi.so'
                                                         ],
                                                         [
                                                           'asis_module',
                                                           'libexec/httpd/mod_asis.so'
                                                         ],
                                                         [
                                                           'imap_module',
                                                           'libexec/httpd/mod_imap.so'
                                                         ],
                                                         [
                                                           'action_module',
                                                           'libexec/httpd/mod_actions.so'
                                                         ],
                                                         [
                                                           'userdir_module',
                                                           'libexec/httpd/mod_userdir.so'
                                                         ],
                                                         [
                                                           'alias_module',
                                                           'libexec/httpd/mod_alias.so'
                                                         ],
                                                         [
                                                           'rewrite_module',
                                                           'libexec/httpd/mod_rewrite.so'
                                                         ],
                                                         [
                                                           'access_module',
                                                           'libexec/httpd/mod_access.so'
                                                         ],
                                                         [
                                                           'auth_module',
                                                           'libexec/httpd/mod_auth.so'
                                                         ],
                                                         [
                                                           'log_forensic_module',
                                                           'libexec/httpd/mod_log_forensic.so'
                                                         ],
                                                         [
                                                           'setenvif_module',
                                                           'libexec/httpd/mod_setenvif.so'
                                                         ],
                                                         [
                                                           'perl_module',
                                                           'libexec/httpd/libperl.so'
                                                         ],
                                                         [
                                                           'php4_module',
                                                           'libexec/httpd/libphp4.so'
                                                         ],
                                                         [
                                                           'hfs_apple_module',
                                                           'libexec/httpd/mod_hfs_apple.so'
                                                         ],
                                                         [
                                                           'bonjour_module',
                                                           'libexec/httpd/mod_bonjour.so'
                                                         ],
                                                         [
                                                           'fastcgi_module',
                                                           'libexec/httpd/mod_fastcgi.so'
                                                         ],
                                                         [
                                                           'php4_module',
                                                           '/usr/local/php/libphp4.so'
                                                         ]
                                                       ]
                                     },
                 'cmodules_disabled' => {},
                 'preamble_hooks' => [
                                       'configure_libmodperl',
                                       sub { "DUMMY" }
                                     ],
                 'preamble' => [
                                 '<IfModule !mod_log_config.c>
    LoadModule config_log_module "/usr/libexec/httpd/mod_log_config.so"
</IfModule>
',
                                 '<IfModule !mod_mime.c>
    LoadModule mime_module "/usr/libexec/httpd/mod_mime.so"
</IfModule>
',
                                 '<IfModule !mod_negotiation.c>
    LoadModule negotiation_module "/usr/libexec/httpd/mod_negotiation.so"
</IfModule>
',
                                 '<IfModule !mod_include.c>
    LoadModule includes_module "/usr/libexec/httpd/mod_include.so"
</IfModule>
',
                                 '<IfModule !mod_autoindex.c>
    LoadModule autoindex_module "/usr/libexec/httpd/mod_autoindex.so"
</IfModule>
',
                                 '<IfModule !mod_dir.c>
    LoadModule dir_module "/usr/libexec/httpd/mod_dir.so"
</IfModule>
',
                                 '<IfModule !mod_cgi.c>
    LoadModule cgi_module "/usr/libexec/httpd/mod_cgi.so"
</IfModule>
',
                                 '<IfModule !mod_asis.c>
    LoadModule asis_module "/usr/libexec/httpd/mod_asis.so"
</IfModule>
',
                                 '<IfModule !mod_imap.c>
    LoadModule imap_module "/usr/libexec/httpd/mod_imap.so"
</IfModule>
',
                                 '<IfModule !mod_actions.c>
    LoadModule action_module "/usr/libexec/httpd/mod_actions.so"
</IfModule>
',
                                 '<IfModule !mod_userdir.c>
    LoadModule userdir_module "/usr/libexec/httpd/mod_userdir.so"
</IfModule>
',
                                 '<IfModule !mod_alias.c>
    LoadModule alias_module "/usr/libexec/httpd/mod_alias.so"
</IfModule>
',
                                 '<IfModule !mod_rewrite.c>
    LoadModule rewrite_module "/usr/libexec/httpd/mod_rewrite.so"
</IfModule>
',
                                 '<IfModule !mod_access.c>
    LoadModule access_module "/usr/libexec/httpd/mod_access.so"
</IfModule>
',
                                 '<IfModule !mod_auth.c>
    LoadModule auth_module "/usr/libexec/httpd/mod_auth.so"
</IfModule>
',
                                 '<IfModule !mod_log_forensic.c>
    LoadModule log_forensic_module "/usr/libexec/httpd/mod_log_forensic.so"
</IfModule>
',
                                 '<IfModule !mod_setenvif.c>
    LoadModule setenvif_module "/usr/libexec/httpd/mod_setenvif.so"
</IfModule>
',
                                 '<IfModule !mod_php4.c>
    LoadModule php4_module "/usr/libexec/httpd/libphp4.so"
</IfModule>
',
                                 '<IfModule !mod_hfs_apple.c>
    LoadModule hfs_apple_module "/usr/libexec/httpd/mod_hfs_apple.so"
</IfModule>
',
                                 '<IfModule !mod_bonjour.c>
    LoadModule bonjour_module "/usr/libexec/httpd/mod_bonjour.so"
</IfModule>
',
                                 '<IfModule !mod_fastcgi.c>
    LoadModule fastcgi_module "/usr/libexec/httpd/mod_fastcgi.so"
</IfModule>
',
                                 '<IfModule !mod_php4.c>
    LoadModule php4_module "/usr/local/php/libphp4.so"
</IfModule>
',
                                 '<IfModule !mod_mime.c>
    LoadModule mime_module "/usr/libexec/httpd/mod_mime.so"
</IfModule>
',
                                 '<IfModule !mod_alias.c>
    LoadModule alias_module "/usr/libexec/httpd/mod_alias.so"
</IfModule>
',
                                 '<IfModule !mod_perl.c>
    LoadModule perl_module "/usr/libexec/httpd/libperl.so"
</IfModule>
',
                                 ''
                               ],
                 'vars' => {
                             'defines' => '',
                             'cgi_module_name' => 'mod_cgi',
                             'conf_dir' => '/private/etc/httpd',
                             't_conf_file' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/httpd.conf',
                             't_dir' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t',
                             'libmodperl' => '/usr/libexec/httpd/libperl.so',
                             'cgi_module' => 'mod_cgi.c',
                             'target' => 'httpd',
                             'thread_module' => 'worker.c',
                             'bindir' => '',
                             'user' => 'sterling',
                             'access_module_name' => 'mod_access',
                             'auth_module_name' => 'mod_auth',
                             'top_dir' => '/Users/sterling/projects/Contentment/Contentment-0.011_031',
                             'httpd_conf' => '/private/etc/httpd/httpd.conf',
                             'httpd' => '/usr/sbin/httpd',
                             'scheme' => 'http',
                             'ssl_module_name' => 'mod_ssl',
                             'port' => 8529,
                             'sbindir' => '/usr/sbin',
                             't_conf' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf',
                             'servername' => 'localhost',
                             'inherit_documentroot' => '/Library/WebServer/Documents',
                             'proxy' => 'off',
                             'serveradmin' => 'sterling@localhost',
                             'remote_addr' => '127.0.0.1',
                             'perlpod' => '/System/Library/Perl/5.8.6/pods',
                             'sslcaorg' => 'asf',
                             'php_module_name' => 'mod_php4',
                             'maxclients_preset' => 0,
                             'php_module' => 'mod_php4.c',
                             'ssl_module' => 'mod_ssl.c',
                             'auth_module' => 'mod_auth.c',
                             'access_module' => 'mod_access.c',
                             't_logs' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/logs',
                             'minclients' => 1,
                             'maxclients' => 2,
                             'group' => 'sterling',
                             'apxs' => '/usr/sbin/apxs',
                             'maxclientsthreadedmpm' => 2,
                             'thread_module_name' => 'worker',
                             'documentroot' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/htdocs',
                             'serverroot' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t',
                             'sslca' => '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/ssl/ca',
                             'perl' => '/usr/bin/perl',
                             'src_dir' => undef,
                             'proxyssl_url' => ''
                           },
                 'clean' => {
                              'files' => {
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/apache_test_config.pm' => 1,
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/logs/apache_runtime_status.sem' => 1,
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/modperl_inc.pl' => 1,
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/htdocs/index.html' => 1,
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/modperl_startup.pl' => 1,
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/httpd.conf' => 1,
                                           '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/conf/extra.conf' => 1
                                         },
                              'dirs' => {
                                          '/Users/sterling/projects/Contentment/Contentment-0.011_031/t/logs' => 1
                                        }
                            },
                 'httpd_info' => {
                                   'BUILT' => 'Mar 20 2005 15:08:27',
                                   'MODULE_MAGIC_NUMBER_MINOR' => '16',
                                   'VERSION' => 'Apache/1.3.33 (Darwin)',
                                   'MODULE_MAGIC_NUMBER' => '19990320:16',
                                   'MODULE_MAGIC_NUMBER_MAJOR' => '19990320'
                                 },
                 'modules' => {
                                'mod_include.c' => '/usr/libexec/httpd/mod_include.so',
                                'mod_asis.c' => '/usr/libexec/httpd/mod_asis.so',
                                'mod_negotiation.c' => '/usr/libexec/httpd/mod_negotiation.so',
                                'mod_php4.c' => '/usr/local/php/libphp4.so',
                                'mod_fastcgi.c' => '/usr/libexec/httpd/mod_fastcgi.so',
                                'http_core.c' => 1,
                                'mod_hfs_apple.c' => '/usr/libexec/httpd/mod_hfs_apple.so',
                                'mod_setenvif.c' => '/usr/libexec/httpd/mod_setenvif.so',
                                'mod_access.c' => '/usr/libexec/httpd/mod_access.so',
                                'mod_dir.c' => '/usr/libexec/httpd/mod_dir.so',
                                'mod_log_forensic.c' => '/usr/libexec/httpd/mod_log_forensic.so',
                                'mod_cgi.c' => '/usr/libexec/httpd/mod_cgi.so',
                                'mod_actions.c' => '/usr/libexec/httpd/mod_actions.so',
                                'mod_so.c' => 1,
                                'mod_perl.c' => '/usr/libexec/httpd/libperl.so',
                                'mod_bonjour.c' => '/usr/libexec/httpd/mod_bonjour.so',
                                'mod_imap.c' => '/usr/libexec/httpd/mod_imap.so',
                                'mod_alias.c' => '/usr/libexec/httpd/mod_alias.so',
                                'mod_autoindex.c' => '/usr/libexec/httpd/mod_autoindex.so',
                                'mod_rewrite.c' => '/usr/libexec/httpd/mod_rewrite.so',
                                'mod_auth.c' => '/usr/libexec/httpd/mod_auth.so',
                                'mod_log_config.c' => '/usr/libexec/httpd/mod_log_config.so',
                                'mod_mime.c' => '/usr/libexec/httpd/mod_mime.so',
                                'mod_userdir.c' => '/usr/libexec/httpd/mod_userdir.so'
                              },
                 'httpd_defines' => {
                                      'SUEXEC_BIN' => '/usr/sbin/suexec',
                                      'HARD_SERVER_LIMIT' => '2048',
                                      'HAVE_FLOCK_SERIALIZED_ACCEPT' => 1,
                                      'EAPI' => 1,
                                      'DEFAULT_PIDLOG' => '/var/run/httpd.pid',
                                      'USE_MMAP_SCOREBOARD' => 1,
                                      'HAVE_MMAP' => 1,
                                      'ACCESS_CONFIG_FILE' => '/etc/httpd/access.conf',
                                      'DYNAMIC_MODULE_LIMIT' => '64',
                                      'DEFAULT_SCOREBOARD' => '/var/run/httpd.scoreboard',
                                      'RESOURCE_CONFIG_FILE' => '/etc/httpd/srm.conf',
                                      'DEFAULT_LOCKFILE' => '/var/run/httpd.lock',
                                      'USE_MMAP_FILES' => 1,
                                      'SINGLE_LISTEN_UNSERIALIZED_ACCEPT' => 1,
                                      'DEFAULT_ERRORLOG' => '/var/log/httpd/error_log',
                                      'HTTPD_ROOT' => '/usr',
                                      'TYPES_CONFIG_FILE' => '/etc/httpd/mime.types',
                                      'HAVE_FCNTL_SERIALIZED_ACCEPT' => 1,
                                      'SERVER_CONFIG_FILE' => '/etc/httpd/httpd.conf'
                                    }
               }, 'Apache::TestConfig' );
}

1;
