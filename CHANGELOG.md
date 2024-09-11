<!-- markdownlint-disable MD024 -->
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2024-09-11

### Breaking Change

- Update for azurerm 4.0

## [1.2.0] - 2024-03-01

### Added

- The `private_link_endpoint_ids` field in the optional `network_rules` variable. It is empty (`[]`) by default.

## [1.1.0] - 2023-10-05

### Added

- Additional outputs:
  - storage_primary_table_endpoint
  - storage_secondary_table_endpoint

## [1.0.2] - 2023-07-23

### Added

- Add blob endpoint on outputs

## [1.0.1] - 2023-07-17

### Added

- Add queue endpoint on outputs

## [1.0.0] - 2023-04-17

### Added

- Initial Release
