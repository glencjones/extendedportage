# extendedportage Gentoo overlay

The portage is a collection of installs I require for my system.

### Installation

Apart from the manual configuration portage should work as normal.

This is not an official portage, but private please use if it can help.

#### Manual

Add this to `/etc/portage/repos.conf/layman.conf`

`[extendedportage]`\
`sync-uri = hhttps://github.com/glencjones/extendedportage.git`\
`sync-type = git`\
`location = /var/db/repos/extendedportage`

Then do. `emerge --sync extendedportage`
