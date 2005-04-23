Fixed the misuse of $infile in expand-notes.PL
Added mode copying to expand-notes.PL
Added a new action to "./Build install" to set the permissions of contentment.log to 0600
Any .cgi file will have "make_executable" called upon them.
Updated the installation documentation in Contentment::Manual::Install
Fixed the @@CONFDIR@@ typo in Contentment.pm
Fixed the typo in Build.PL which made the SAMPLE_DIR refer to site in most cases.
Added the SITE_DIR to the sample Contentment.conf configuration.
Removed "ToDo" in favor of Contentment::Manual::Bugs
Removed log4perl.conf.file  from version control (it's generated from log4perl.conf.file.in)
Added "SetHandler cgi-script" to cgi-bin/.htaccess
Moved handler.cgi to handler.cgi.in to allow the Contentment lib to be automatically dropped in via expand-notes.PL
Updated htaccess.sample substantially to make the rewrites more robust.
