# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.3.1] - 2023-09-10

### Changed

- Upgrade to Tailwind v3.3.3 ([#77](https://github.com/jpanther/lynx/pull/77))
- Upgrade to Typography v0.5.10 ([#90](https://github.com/jpanther/lynx/pull/90))

## [1.3.0] - 2023-06-04

### Added

- Support for Stack Exchange and Stack Overflow ([#52](https://github.com/jpanther/lynx/pull/52))

### Changed

- Updated GitLab icon
- Upgrade to Tailwind v3.3.2 ([#74](https://github.com/jpanther/lynx/pull/74))

### Fixed

- Error building site when using Hugo v0.112.0 or later ([#73](https://github.com/jpanther/lynx/issues/73))

## [1.2.4] - 2023-01-18

### Changed

- Upgrade to Typography v0.5.9 ([#41](https://github.com/jpanther/lynx/pull/41))

## [1.2.3] - 2023-01-09

### Changed

- Updated Mastodon link colour in line with branding changes ([#36](https://github.com/jpanther/lynx/pull/36))

## [1.2.2] - 2022-11-22

### Changed

- Upgrade to Tailwind v3.2.4 ([#30](https://github.com/jpanther/lynx/pull/30))
- Upgrade to Typography v0.5.8 ([#23](https://github.com/jpanther/lynx/pull/23), [#27](https://github.com/jpanther/lynx/pull/27))

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

[Unreleased]: https://github.com/jpanther/lynx/compare/v1.3.1...HEAD
[1.3.1]: https://github.com/jpanther/lynx/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/jpanther/lynx/compare/v1.2.4...v1.3.0
[1.2.4]: https://github.com/jpanther/lynx/compare/v1.2.3...v1.2.4
[1.2.3]: https://github.com/jpanther/lynx/compare/v1.2.2...v1.2.3
[1.2.2]: https://github.com/jpanther/lynx/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/jpanther/lynx/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/jpanther/lynx/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/jpanther/lynx/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/jpanther/lynx/releases/tags/v1.0.0
