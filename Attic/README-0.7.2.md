<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [rkwalify](#rkwalify)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# rkwalify

release::	0.7.2
lastupdate::	$Date$
copyright::	copyright(c) 2005-2010 kuwata-lab all rights reserved.

== Introduction

Updated version of 
"Kwalify is a parser, schema validator, and data binding tool for YAML and JSON"

See doc/users-guide.html for details.

== Installation

If you have installed RubyGems, just type 'gem install kwalify' 

  $ sudo gem install kwalify
   
Else if you can be root user, use 'setup.rb' as following:

  $ tar xjf kwalify-0.7.2.tar.bz2
  $ cd kwalify-0.7.2/
  $ sudo ruby setup.rb install

Else copy script and libraries to proper directory.

  $ tar xjf kwalify-0.7.2.tar.bz2
  $ cd kwalify-0.7.2/
  $ mkdir -p $HOME/bin
  $ cp -a bin/* $HOME/bin
  $ export PATH=$PATH:$HOME/bin
  $ mkdir -p $HOME/lib/ruby
  $ cp -a lib/* $HOME/lib/ruby
  $ export RUBYLIB=$HOME/lib/ruby

(Optional) 'contrib/inline-require' script to concatenate all script
and libraries into a file.
  
  $ tar xjf kwalify-0.7.2.tar.bz2
  $ cd kwalify-0.7.2/
  $ unset RUBYLIB
  $ ruby contrib/inline-require -I ./lib bin/kwalify > contrib/kwalify
  $ chmod a+x contrib/kwalify
  $ mv contrib/kwalify $HOME/bin

== License

   MIT License

== Copyright

   copyright(c) 2005-2010 kuwata-lab all rights reserved.
