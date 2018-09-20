# Contributing The UDL Site

> *tl;tr* For pull request, please do check **Allow edits from maintainers**, and merge from **your new branch** into **my master branch**.

Thank you for efforts on improving this web site. There are two ways to contribute to this repo:

1. Simple way: Directly propose file change(s) in Github
2. Standard way: Fork and pull request model

## Proposing File Change

Sometimes you may want to fix a typo, or do some small changes that doesn't need a test, you can **propose file change** directly.

> reference: [Editing files in another user's repository - Github Help](https://help.github.com/articles/editing-files-in-another-user-s-repository/)

## Modifying This Site

If you are going to create a new feature or fix a bug, please follow the "fork and pull" model.

The best way is to edit and preview in your local machine. Running on local machine requires: `git`, `Ruby`, `RubyGems` and `bundler`. In terminal, feel free to run:

```shell
git clone [your_fork_repo_url]
bundle install # to install github-pages gem, jekyll, etc.
source build.sh
bundle exec jekyll serve # http://localhost:4000/udl-documentation/
```

## Little Notes on Site Design

For better user experience, here are some directions to follow:

- Keep the layout clean and simple
- Easy to read; Responsive for difference screen size, including split mode
- Prefer less loading for slow machine or connection over eye candy
- Prefer Github Pages (Jekyll in safe mode) mechanism and practice
