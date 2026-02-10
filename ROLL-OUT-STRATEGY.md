## RKWALIFY Roll Out Stategy

**This document only focuses on the initial 2026 release: 1.4.0.**

 1. Naming: Use "rkwalify" as repo and gem name, but use
    "kwalify" inside code and tests.  Use "Rkwalify" in documentaiton.

 2. Step 1: First add https://rubygems.org/gems/kwalify (0.7.2) into
    "rkwalify" repo. This includes all files (code, docs, etc).
    See commits for more details.
    * Assume this original "kwalify" gem will stay around.
    * Add credit to repo.

 3. Step 2: Then merge in https://rubygems.org/gems/dc-kwalify
    (1.0.0) to "rkwalify" repo. See commits for more details.
    * Add credit to repo.

 4. Step 3: Modernize the tool chain (bundler, rubygems, rvm, Rakefile,
    several rubocop gems, markdown, ruby 3.4.7, simplecov).
    See commits for more details. Also used my personal tools as needed.

 5. Create "rkwalify" issues for major work items.
    * More details at https://github.com/jasnow/rkwalify/issues .

 6. Initial Release Target

    * rkwalify's "test" Githut Action is green. Comment out test/test.rb
        tests that are broken. See [issue](https://github.com/jasnow/rkwalify/issues/2) for details.

    * ruby-advisory-db (Ruby 3.4.7) tests are green  using rkwalify code.

---

 8. Must decide if anything else is added to .gitignore file in final release
    * doc, doc-pai
    * tests, examples, contrib
    * Attic

 9. Another technique is to comment code and tets not used by #7 repos.

 10. Decide when to make repo public.

## RELEASE ORDER/NAMING

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
         * FYI: Rails maintains:
           * Last 2 major versions with security patches.
           * Older versions only get fixes from community forks.
EOF
