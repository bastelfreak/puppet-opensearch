# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v0.3.0](https://github.com/voxpupuli/puppet-opensearch/tree/v0.3.0) (2023-03-31)

[Full Changelog](https://github.com/voxpupuli/puppet-opensearch/compare/v0.2.0...v0.3.0)

**Breaking changes:**

- Refactor repository handling [\#17](https://github.com/voxpupuli/puppet-opensearch/pull/17) ([crazymind1337](https://github.com/crazymind1337))

**Implemented enhancements:**

- Switch to module hiera data values [\#21](https://github.com/voxpupuli/puppet-opensearch/pull/21) ([crazymind1337](https://github.com/crazymind1337))
- Do not use parameters for private classes [\#14](https://github.com/voxpupuli/puppet-opensearch/pull/14) ([smortex](https://github.com/smortex))
- Add Debian repository handling [\#12](https://github.com/voxpupuli/puppet-opensearch/pull/12) ([crazymind1337](https://github.com/crazymind1337))

**Fixed bugs:**

- Fixes apt-get update to be executed before package installation [\#19](https://github.com/voxpupuli/puppet-opensearch/pull/19) ([crazymind1337](https://github.com/crazymind1337))

**Closed issues:**

- Package is installed before apt-get update [\#18](https://github.com/voxpupuli/puppet-opensearch/issues/18)
- Use module hiera data instead of params.pp [\#16](https://github.com/voxpupuli/puppet-opensearch/issues/16)
- Using the repository will only install the current latest package version [\#15](https://github.com/voxpupuli/puppet-opensearch/issues/15)

**Merged pull requests:**

- Add Debian 11 to supported OSes [\#13](https://github.com/voxpupuli/puppet-opensearch/pull/13) ([crazymind1337](https://github.com/crazymind1337))

## [v0.2.0](https://github.com/voxpupuli/puppet-opensearch/tree/v0.2.0) (2023-03-23)

[Full Changelog](https://github.com/voxpupuli/puppet-opensearch/compare/v0.1.0...v0.2.0)

**Implemented enhancements:**

- cleanup metadata.json; add missing source key [\#9](https://github.com/voxpupuli/puppet-opensearch/pull/9) ([crazymind1337](https://github.com/crazymind1337))

## [v0.1.0](https://github.com/voxpupuli/puppet-opensearch/tree/v0.1.0) (2023-03-23)

[Full Changelog](https://github.com/voxpupuli/puppet-opensearch/compare/e63db5e765ce5eeb6b5f71a833dee62028ece54f...v0.1.0)

**Merged pull requests:**

- update README.md and use latest repositories for depending modules in rspec tests [\#7](https://github.com/voxpupuli/puppet-opensearch/pull/7) ([crazymind1337](https://github.com/crazymind1337))
- Add beaker tests; add missing dependencies to metadata.json [\#6](https://github.com/voxpupuli/puppet-opensearch/pull/6) ([crazymind1337](https://github.com/crazymind1337))
- add rspec tests with fixes for manifests [\#5](https://github.com/voxpupuli/puppet-opensearch/pull/5) ([crazymind1337](https://github.com/crazymind1337))
- fix lint issues [\#4](https://github.com/voxpupuli/puppet-opensearch/pull/4) ([crazymind1337](https://github.com/crazymind1337))
- set a correct license in metadata [\#3](https://github.com/voxpupuli/puppet-opensearch/pull/3) ([crazymind1337](https://github.com/crazymind1337))
- modulesync for puppet-opensearch [\#2](https://github.com/voxpupuli/puppet-opensearch/pull/2) ([crazymind1337](https://github.com/crazymind1337))
- first stage of a working module [\#1](https://github.com/voxpupuli/puppet-opensearch/pull/1) ([crazymind1337](https://github.com/crazymind1337))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
