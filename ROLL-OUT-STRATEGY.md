## RKWALIFY Roll Out Stategy (as of 2/7/2026)

 1. Naming: Use "rkwalify" as repo and gem name, but use
    "kwalify" inside repo.

 2. First add https://rubygems.org/gems/kwalify (0.7.2) into
    "rkwalify" repo. This includes all files (code, docs, etc).
    See commits for more details.
    * Assume this original "kwalify" gem will stay around.
    * Add credit to repo.

 3. Then merge in https://rubygems.org/gems/dc-kwalify
    (1.0.0) to "rkwalify" repo. See commits for more details.
    * Add credit to repo.

 4. Modernize the tool chain (bundler, rubygems, rvm, Rakefile,
    several rubocop gems, markdown, ruby 3.4.7, simplecov)
    See commits for more details. Also used my personal tools as needed.

 5. Create "rkwalify" issues for major work items.
    * More details at https://github.com/jasnow/rkwalify/issues .

 6. Initial Release Target
    -1- rkwalify's "test" Githut Action is green.
    -2- ruby-advisory-db (Ruby 3.4.7) tests are green
        using rkwalify code.

 7. Possible Release Order
    * Alpha release
    * Beta release
    * RC (Release Candidate)release
    * Final release
