# rkwalify

release::	0.7.3
lastupdate::	$Date$
copyright::	copyright(c) 2005-2010 kuwata-lab all rights reserved.

## Introduction

Updated version of "RKwalify is a parser, schema validator,
and data binding tool for YAML and JSON"

See [documentation](doc/users-guide.html) for details.

## Getting Started


## Contributing

To create Gemfile.lock file, run "bundle install".

To run the tests, type "rake".

To run the tests with (simplecov) coverage, type "COVERAGE='yes' rake".
Then open **coverage/index.html** in a browser.

## Installation

Add this line to your application's Gemfile:

 * gem "rkwalify"

Or install directly with "gem install rkwalify".

The 'contrib/inline-require' script to concatenate all scripts
and libraries into a file.

  $ cd rkwalify/
  $ unset RUBYLIB
  $ ruby contrib/inline-require -I ./lib bin/rkwalify > contrib/rkwalify
  $ chmod a+x contrib/rkwalify
  $ cp lib/kwalify/kwalify.schema.yaml $HOME/bin
  $ mv contrib/rkwalify                $HOME/bin

# License

[MIT License](MIT-LICENSE)

# Copyright

copyright(c) 2005-2010 kuwata-lab all rights reserved.
copyright(c) 2026 Al Snow all rights reserved.
