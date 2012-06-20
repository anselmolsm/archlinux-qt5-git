Overview
========

This repository contains Qt 5 package scripts for Arch Linux.

Groups
======

I've organized the modules by adding them to groups:

* qt5: this group contains all of the packages

* qt5-essentials: this group contains packages for all modules qt considers
  `essential <http://qt-project.org/wiki/Qt-Essentials-Modules>`_.

* qt5-addons: this group contains packages for all modules qt considers
  `addons <http://qt-project.org/wiki/Qt-Add-ons-Modules>`_.

In the few cases where Qt designates a module as an addon, but it is already
inclluded in or a dependency of an essential module, I have added it to the
qt-essentials group.

Status
======
As of yet, the only packages that are finished are those initially provided by
`anselmolsm <http://github.com/anselmosm>`_ (thanks!). As time permits, I'll
update these.
