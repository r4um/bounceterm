BounceTerm
==========

BounceTerm is a [SIMBL][1] plugin for Mac OS X's [Terminal.app][2] that makes
the dock icon bounce when a bell or beep is triggered. This can be useful if
you have a long-running process going on and you want to be notified when
it's done (assuming it beeps, of course).

No configuration is necessary, just install SIMBL and move
`BounceTerm.bundle` to `Library/Application Support/SIMBL/Plugins` in
your home folder and restart Terminal.app. To uninstall the plugin, simply
delete the plugin's folder.

If you want to make sure the plugin's working, try running
`while [ 1 ]; do echo -n '\a'; sleep 2; done` in your shell and focusing a
window in another application. You should see Terminal.app's dock icon bounce
every two seconds.

[1]: http://www.culater.net/software/SIMBL/SIMBL.php
[2]: http://www.apple.com/macosx/technology/unix.html


Download
--------

[BounceTerm.zip][3] (11 KB)

[3]: http://bitheap.org/bounceterm/BounceTerm.zip


Frequently Asked Questions
--------------------------

> Won't this plugin break if Apple releases an update to Terminal.app?

No. The plugin is less than 30 lines long. It uses no APIs from Terminal.app,
it merely adds an observer for Terminal.app's beep notification. The worst
that could happen is that the notification name changes or goes away, in
which case the plugin would simply do nothing.

> But most programs I use don't beep. How do I make them beep after exiting?

You just need to run `echo -n '\a'` after the program. I recommend adding
an alias in your shell's `rc` (like `~/.bashrc` or `~/.zshrch`) to simplify
the process:

    alias beep="echo -n '\a'"

Now if you'd like to have the dock icon bounce after a command finishes, run:

    some command; beep

If you want the dock icon to bounce only when there's an error, try:

    some command || beep


Development
-----------

Download the official development repository using [Mercurial][4]:

    hg clone http://bitheap.org/hg/bounceterm/

Run `make` to compile the plugin, and `make install` to install it into
your home directory's SIMBL plugins folder.

[4]: http://www.selenic.com/mercurial/
