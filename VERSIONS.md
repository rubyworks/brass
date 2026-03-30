# HISTORY

## 1.3.0 | 2026-03-30

Maintenance release. Modernized project tooling and cleaned up documentation.

Changes:

* Replace custom Indexer system with standard gemspec.
* Replace Travis CI with GitHub Actions.
* Replace Assembly/detroit with Rakefile.
* Fix typos in README and source code.
* Update URLs to HTTPS.
* Remove obsolete files (etc/, work/, MANIFEST).
* Clean up .gitignore.


## 1.2.1 | 2012-02-09

This release adds framework adapters for MiniTest and TestUnit, which allows
those frameworks to recognize BRASS assertions as "failures" rather than
as "errors".

Changes:

* Add framework adapters for MiniTest and TestUnit.


## 1.2.0 | 2012-01-26

The default error is `RuntimeError` rather than `StandardError` to
match Ruby's default exception when no arguments are passed to `raise`.

Changes:

* Change default error to RuntimeError.


## 1.1.0 | 2012-01-25

Quick fix for issue with parsing arguments of #assert and #refute methods.
Also added #fail! method to dry-up code.

Changes:

* Fix arguments parsing for assert/refute.
* Add #fail! method to dry-up code.


## 1.0.0 | 2012-01-24

This is the initial release of BRASS. It is given a 1.0.0 version
despite being such a new project because it is very simple and 
the code is derived from other system that have used it for some time.

Changes:

* Happy Birthday!

