An avahi-daemon container for Red Hat Enterprise Linux Atomic Host
---------------------------------------------------------------------

This essentially provides a broadcast DNS responder inside a container
for running on RHEL Atomic Host.  It integrates with the atomic command
to make setup simple.  From inside a **rhel-tools** container, just build,
and run.

#.  ``docker build -t avahi git://github.com/cevich/atomic-avahi.git``
#.  ``atomic run avahi``

Notes:

*  The avahi-daemon needs to be working properly on the "client" side also.

*  Be sure to open up firewall ports ``firewall-cmd --add-service mdns``.

*  Modification of ``avahi-daemon.conf`` in the image may be necessary to
   fit your environment.
