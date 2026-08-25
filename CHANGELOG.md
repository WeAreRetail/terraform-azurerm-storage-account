<!-- markdownlint-disable MD024 -->
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.4.2] - 2026-08-24

### Added

- `tier_to_cool_after_days_since_last_access_time` and `tier_to_archive_after_days_since_last_access_time` optional actions in `lifecycle_policy_rules`, allowing blob tiering rules to be based on last-access time instead of only last-modified time.

## [3.4.1] - 2026-07-08

### Fixed

- `lifecycle_policy_rules` default value changed from `[]` to `null` to prevent the creation of an empty `azurerm_storage_management_policy` resource, which caused a 400 error from the Azure API when no rules were defined.

## [3.4.0] - 2026-06-16

### Added

- `lifecycle_policy_rules` optional variable to configure storage account lifecycle management policy rules.
- Conditional creation of `azurerm_storage_management_policy` when `lifecycle_policy_rules` is provided.

## [3.3.0] - 2026-06-02

### Added

- `enable_advanced_threat_protection` and `deploy_advanced_threat_protection_resource` variables to control the deployment of the advanced threat protection resource. By default, the resource will be deployed but not enabled.

## [3.2.0] - 2025-07-24

### Added

- `hns_soft_delete_enabled` option for BlobStorage with hns_enabled. This allows forcing the soft delete feature when HNS is enabled. False by default.

## [3.1.0] - 2025-06-14

### Added

- `sftp_enabled` option for BlobStorage with hns_enabled.

## [3.0.0] - 2025-05-09

### Breaking Change

- `azurerm_storage_container` - migration from deprecated `storage_account_name` to `storage_account_id`
- `azurerm_storage_share` - migration from deprecated `storage_account_name` to `storage_account_id`

## [2.1.0] - 2024-09-25

### Added

- `access_tier` option for BlobStorage, FileStorage and StorageV2. Default to 'Hot'.

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
