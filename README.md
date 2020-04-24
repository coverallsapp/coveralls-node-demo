# Coveralls Parallel Jobs Demo [![Coverage Status](https://coveralls.io/repos/github/nickmerwin/coveralls-node-demo/badge.svg?branch=master)](https://coveralls.io/github/coverallsapp/coveralls-node-demo?branch=master)

| CI | Badge | Setup |
| -- | -- | -- |
| CircleCI | [![CircleCI](https://circleci.com/gh/coverallsapp/coveralls-node-demo.svg?style=svg)](https://circleci.com/gh/coverallsapp/coveralls-node-demo) | [config.yml](https://github.com/nickmerwin/coveralls-node-demo/blob/master/.circleci/config.yml) |
| Travis | [![Build Status](https://travis-ci.org/coverallsapp/coveralls-node-demo.svg?branch=master)](https://travis-ci.org/coverallsapp/coveralls-node-demo) | [.travis.yml](https://github.com/nickmerwin/coveralls-node-demo/blob/master/.travis.yml) |
| GitHub Actions | [![build](https://github.com/coverallsapp/coveralls-node-demo/workflows/build/badge.svg)](https://github.com/coverallsapp/coveralls-node-demo/actions?query=workflow%3Abuild) | [workflow.yml](https://github.com/nickmerwin/coveralls-node-demo/blob/master/.github/workflows/workflow.yml) |

---

### Private Repo Setup

* Add your `COVERALLS_REPO_TOKEN` to the secret environment variables.

### CircleCI Setup for Public Repos

* Add your `COVERALLS_REPO_TOKEN` to CircleCI environment variables.
* Enable 3rd-party Orb usage in the organization's security settings on CircleCI in order to use the Coveralls Orb.
