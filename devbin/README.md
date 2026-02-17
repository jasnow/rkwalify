<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [devbin Directory](#devbin-directory)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## devbin Directory

These files are shell scripts used by the repo's developer(s).

Currently these scripts include: 

 * STATIC ANALYSIS/TEST-RELATED:
   * chkspelling.sh - Check for misspelled words
   * chk-rad-repo.sh - Test code against ruby-advisory-db repo.
   * my-tests.sh - short and dirty version of testsuite., 
   * runtests.sh

 * PACKAGING:
   * mkbig-rkwalify.sh - Combine all the code into 1 file.

 * RELEASING:
   * chkcopyrights.sh - Check copyright lines in files.
   * mkManifest.sh - Make Manifest file.
   * mkgem_file.sh - Run mkManifest.sh and "gem build" to
     create a *.gem file.
   * got-all-rel-numbers.sh - Check for old release numbers.
   * updata-rel-numbers.sh -  Update release numbers.
