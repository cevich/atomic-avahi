An avahi-daemon container for Porject Atomic Host
---------------------------------------------------------------------

This essentially provides a broadcast DNS responder inside a container
running on an Atomic Host.  It integrates with the ``atomic`` command
to make installation simple.

#.  ``docker build -t avahi-daemon git://github.com/cevich/atomic-avahi.git``
#.  ``atomic install avahi-daemon``
#.  ``systemctl --system daemon-reload``
#.  ``systemctl start avahi-daemon``
#.  ``systemctl enable avahi-daemon``

Notes:

*  You'll need to run the build from a SPC containing git, or download and
   build from a tarball.

*  Modification of ``avahi-daemon.conf`` in the image may be necessary to
   fit your environment.

* More info on the ``atomic`` command and Project Atomic can be found at
  https://github.com/projectatomic/atomic
