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


Development
-----------

Download the official development repository using [Mercurial][4]:

    hg clone http://bitheap.org/hg/bounceterm/

Run `make` to compile the plugin, and `make install` to install it into
your home directory's SIMBL plugins folder.

[4]: http://www.selenic.com/mercurial/
