# rbenv-alternatives

This plugin allow you to add Ruby interpreters available through the Debian
alternatives system into rbenv. This means you can install the different Ruby
interpreters through APT on Debian and derivative distributions, and switch
between them using rbenv.

The Ruby interpreters installed via APT will become available to use with rbenv
in addition to any other Ruby interpreter you may have installed into
`~/.rbenv/versions` in any other way.

This plugin also install hooks that configure Rubygems to install gems inside
~/.rbenv/${version}/gems. This way you get completely separated Ruby
environments.

## Installation

If you have installed rbenv from source into ~/.rbenv, just create a symcolic
link to where you download this plugin inside ~/.rbenv/plugins:

    $ mkdir ~/.rbenv/plugins
    $ ln -s /path/to/rbenv-alternatives ~/.rbenv/plugins

If you install rbenv through APT, then it will already bring this plugin with
it:

    # apt-get install rbenv

## Usage

    $ rbenv alternatives
    $ rbenv versions
      1.8.7-debian
      1.9.2-debian
    $ rbenv global 1.9.2-debian
    $ rbenv version
    1.9.2-debian (set by /home/terceiro/.rbenv/global)
    $ ruby -v
    ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-linux]

Whenever you install a new Ruby interpreter, or uninstall a previously
installed one, just run `rbenv alternatives` again and it will update your
list of Debian-provided Ruby interpreters with rbenv.

## Copyright

Copyright © 2011-2012, Antonio Terceiro <terceiro@debian.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
