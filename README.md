[![Gem Version](https://badge.fury.io/rb/rkwalify.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/rkwalify)
[![Ruby CI](https://github.com/jasnow/rkwalify/actions/workflows/test.yml/badge.svg)](https://github.com/jasnow/rkwalify/actions/workflows/test.yml)
![Last Updated](https://img.shields.io/date/$(date +%s)?label=Last%20Updated)

# rkwalify

 * release::	1.4.0-preview1
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