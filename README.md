<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [RKwalify](#rkwalify)
  - [Introduction](#introduction)
  - [Getting Started Using Gem](#getting-started-using-gem)
  - [CONTRIBUTE](#contribute)
  - [Contributing as developer](#contributing-as-developer)
- [License](#license)
- [Copyright](#copyright)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# RKwalify

[![Gem Version](https://badge.fury.io/rb/rkwalify.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/rkwalify)
[![Ruby CI](https://github.com/jasnow/rkwalify/actions/workflows/ruby.yml/badge.svg)](https://github.com/jasnow/rkwalify/actions/workflows/ruby.yml)

 * release::	1.4.0-beta
 * lastupdate::	$Date$
 * copyright::	copyright(c) 2005-2010 kuwata-lab all rights reserved.

## Introduction

Updated version of "RKwalify is a parser, schema validator, and data binding tool for YAML and JSON"

## Getting Started Using Gem

 * See [documentation](doc/users-guide.html) for details.

 * To install, add this line to your application's Gemfile:

   * gem "rkwalify"

 * Or install directly with "gem install rkwalify".

(Optional) The 'contrib/inline-require' script to concatenate
all scripts and libraries into a file.
```
  $ cd rkwalify/
  $ unset RUBYLIB
  $ ruby contrib/inline-require -I ./lib bin/rkwalify > contrib/rkwalify
  $ chmod a+x contrib/rkwalify
  $ cp lib/kwalify/kwalify.schema.yaml $HOME/bin
  $ mv contrib/rkwalify                $HOME/bin
```
## CONTRIBUTE

  See [CONTRIBUTING.md](CONTRIBUTING.md) for details. 

## Contributing as developer

 * To create Gemfile.lock file, run "bundle install".

 * To run the tests, type "rake".

 * To run the tests with (simplecov) coverage,
   * type "COVERAGE='yes' rake",
   * and then open **coverage/index.html** in a browser.

# License

[MIT License](MIT-LICENSE)

# Copyright
```
copyright(c) 2005-2010 kuwata-lab all rights reserved.
copyright(c) 2026 Al Snow all rights reserved.
```
