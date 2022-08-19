# About This Repo

This repo is the source of UDL documentation site, that is based on Jekyll and hosted on Github Pages.

This site serves to demonstrate and document new UDL (User Defined Language), it is a feature of Notepad++ editor through which users can define their own syntax highlighting.

Original web address: <https://ivan-radic.github.io/udl-documentation/>

## Contribution

> *tl;tr* For pull request, please do check **Allow edits from maintainers**, and merge from **your new branch** into **my gh-pages branch**.

Two ways to contribute to this repo:

1. Simple way: Directly propose file change(s) in Github.com
2. Standard way: Fork and pull request model

For details, please see [CONTRIBUTING.md](CONTRIBUTING.md). There are some design matters for your reference.

## Development Note

This site is built using Jekyll based on Ruby. To build this site in your local machine, you'll need:

1. Ruby v2.7.x: Best version is stated in ".ruby-version" file.
1. Bundler and Gemfile to install and update gems. Please do `bundle install`.
1. Optional: If you have problem while `bundle install`, you may want to lock your Python version stated in ".python-version" file.
1. Bootstrap SCSS via `git submodule update` (Not using RubyGems).
1. Do `bundle exec jekyll serve` to start your local server.

## Other things

For changes of UDL rules and help, please discuss on [official Notepad\+\+ community](https://community.notepad-plus-plus.org).

This repo is for documentation only, source code is available at [Notepad\+\+ repo on Github](https://github.com/notepad-plus-plus/notepad-plus-plus).
