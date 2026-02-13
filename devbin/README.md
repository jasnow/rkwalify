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
