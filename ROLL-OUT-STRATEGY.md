<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [RKwalify Roll Out Stategy](#rkwalify-roll-out-stategy)
- [Release Order/Naming](#release-ordernaming)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## RKwalify Roll Out Stategy

**This document only focuses on the initial 2026 release: 1.4.0.**

 1. Naming: Use "rkwalify" as repo and gem name, but use
    "kwalify" inside code and tests.  Use "Rkwalify" in documentaiton.

 2. Step 1: First add [kwalify](https://rubygems.org/gems/kwalify) (0.7.2) into
    "rkwalify" repo. This includes all files (code, docs, etc).
    See commits for more details.

    * Assume this original [kwalify](https://rubygems.org/gems/kwalify)
      gem will stay around.
    * Add credit to repo to @kwatch.

 3. Step 2: Then merge in [dc-kwalify](https://rubygems.org/gems/dc-kwalify)
    (1.0.0) to "rkwalify" repo. See commits for more details.
    * Add credit to repo @dafyddcrosby.

 4. Step 3: Modernize the tool chain (bundler, rubygems, rvm, Rakefile,
    several rubocop gems, markdown, ruby 4.0.1, simplecov).
    See commits for more details. Also used my personal tools as needed.

 5. Create "rkwalify" [issues](https://github.com/jasnow/rkwalify/issues)
    for major and known work items.

 6. Initial Release Target

    * rkwalify's "test" Github Action is green. Comment out [test/test.rb](https://github.com/jasnow/rkwalify/blob/main/test/test.rb)
        tests that are broken. See [issue](https://github.com/jasnow/rkwalify/issues/2) for details.

    * ruby-advisory-db (Ruby 4.0.1) tests are green using rkwalify code.

    * Minimum ruby version willbe 3.4.7.
---

 8. Must decide if anything else is added to .gitignore file in final release.
    * Candidates
       * doc, doc-api (As of 2/18/2026, included)
       * tests, examples
       * Attic
    * As of 2/18/2026, all of the above are included.

 9. Another technique is to comment code and tests not used by #7 repos.

 10. Decide when to make repo public. (2/20/2026: done)

## Release Order/Naming

 * Possible Release Order
    * Preview1, Preview2,... release
    * Beta, RC (Release Candidate) release
    * Final release

 *. Release Defintions (draft)
     * MAJOR
       * Introduces significant changes.
       * May include breaking changes.
       * Big architectural shifts

     * MINOR
       * Safe to upgrade within the same major version.
       * Adds new features.
       * No breaking changes. 
         * Maintains backward compatibility as much as possible.

     * TEENY/PATCH
       * Bug fixes and security updates.
       * No new features.

     * RELEASE CADENCE
       * Major releases: roughly every 2 3 years.    
       * Released roughly every 2 3 years (often announced
         at major ecosystem conference)
       * Minor releases: every few months.
         * Released annually (traditionally on specific day).
       * Patch releases: frequent, as needed.
       * Security Policy
         * Example: Rails maintains:
           * Last 2 major versions with security patches.
           * Older versions only get fixes from community forks.
EOF
