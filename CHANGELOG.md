# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.1] - 2022-08-19

### Changed

- Upgrade to Tailwind v3.1.8 ([#12](https://github.com/jpanther/lynx/pull/12), [#18](https://github.com/jpanther/lynx/pull/18))
- Upgrade to Typography v0.5.4 ([#16](https://github.com/jpanther/lynx/pull/16))

### Fixed

- Home link not pointing to correct URL when site deployed in a sub-directory

## [1.2.0] - 2022-06-17

### Added

- Support for new author `headline` parameter
- Automatic author image resizing when image is provided as a Hugo asset
- Alt text to author image ([#8](https://github.com/jpanther/lynx/pull/8))
- Expanded Emoji support in page titles

### Changed

- Upgrade to Tailwind v3.1.3 and Typography v0.5.2
- Adjusted contrast of certain text to improve accessibility
- All CSS is now bundled into a single file for better performance

## [1.1.0] - 2021-11-06

### Added

- Support for Amazon, Apple, Flickr, Google, Kickstarter, Microsoft, Patreon, Telegram, Tumblr and WhatsApp
- Ability to override individual link parameters
- Support for basic content pages
- French translation ([#2](https://github.com/jpanther/lynx/pull/2))

### Fixed

- Typo in GitLab link text
- Minor styling issues

## [1.0.0] - 2021-11-01

### Added

- Built with Tailwind CSS JIT for minified stylesheets without any excess code
- Fully responsive layout
- Dark mode (auto-switching based upon browser)
- SVG icons from FontAwesome 5
- HTML and Emoji support
- Fathom Analytics and Google Analytics support
- Favicons support

[unreleased]: https://github.com/jpanther/lynx/compare/v1.2.1...HEAD
[1.2.1]: https://github.com/jpanther/lynx/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/jpanther/lynx/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/jpanther/lynx/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/jpanther/lynx/releases/tags/v1.0.0
