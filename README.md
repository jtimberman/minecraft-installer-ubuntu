# minecraft-installer-ubuntu

This cookbook implements the system changes that are performed by the [ubuntu-installer](http://cassidyjames.deviantart.com/art/elementary-Minecraft-Icon-and-bonus-Installer-348037448).

# Requirements

Platform: Ubuntu

May work on other Debian-based platforms with or without modification.

# License and Author

This cookbook is written by:

- Author: Joshua Timberman
- Copyright (c) 2015, Joshua Timberman

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

It is based on the work by Cody Garver's and Cassidy James' [minecraft-installer PPA](https://launchpad.net/~minecraft-installer-peeps/+archive/ubuntu/minecraft-installer), which is contains this copyright notice:

```
Format: http://dep.debian.net/deps/dep5
Upstream-Name: minecraft-installer
Source: <http://cassidyjames.deviantart.com/art/elementary-Minecraft-Icon-and-bonus-Installer-348037448>

Files: src/*
Copyright: 2013 Cassidy James <cassidy@elementaryos.org>
License: GPL-3.0+

Files: debian/*
Copyright: 2013 Cody Garver <cody@elementaryos.org>
License: GPL-3.0+

License: GPL-3.0+
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 .
 This package is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 .
 You should have received a copy of the GNU General Public License
 along with this program. If not, see <http://www.gnu.org/licenses/>.
 .
 On Debian systems, the complete text of the GNU General
 Public License version 3 can be found in "/usr/share/common-licenses/GPL-3".
```

The `files/default/minecraft-*png` and `files/default/minecraft.desktop` are from that project. No other components of their project are used. Just as their postinst script only downloads the `minecraft.jar` directly, so does this cookbook, using `remote_file`.
