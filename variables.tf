# ==============================================================================
# MANDATORY VARIABLES (no default values)
# ==============================================================================

variable "instance_index" {
  type = number
  validation {
    condition     = var.instance_index > 0 && var.instance_index < 100
    error_message = "Must be a 2 dights number."
  }
  description = "Resource type index on the resource group."
}

variable "resource_group_name" {
  type        = string
  description = "Specifies the parent resource group name."
}

# ==============================================================================
# OPTIONAL VARIABLES (with default values)
# ==============================================================================

variable "access_tier" {
  type        = string
  default     = "Hot"
  description = "The access tier for the storage account. Valid options are Hot and Cool."
}

variable "account_kind" {
  type        = string
  description = "The type of storage account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
  default     = "StorageV2"
}

variable "blob_soft_delete_retention_days" {
  type        = number
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
  default     = 7
}

variable "caf_prefixes" {
  type        = list(string)
  default     = []
  description = "Prefixes to use for caf naming."
}

variable "change_feed_enabled" {
  type        = bool
  description = "Is the blob service properties for change feed events enabled ?"
  default     = false
}

variable "container_soft_delete_retention_days" {
  type        = number
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
  default     = 7
}

variable "containers_list" {
  description = "List of containers to create and their access levels."
  type        = list(object({ name = string, access_type = string }))
  default     = []
}

variable "custom_location" {
  type        = string
  default     = ""
  description = "Specifies a custom location for the resource."
}

variable "custom_name" {
  type        = string
  default     = ""
  description = "Specifies a custom name for the resource."
}

variable "custom_tags" {
  type        = map(string)
  default     = {}
  description = "The custom tags to add on the resource."
}

variable "description" {
  type        = string
  default     = ""
  description = "The resource description."
}

variable "enable_advanced_threat_protection" {
  type        = bool
  description = "Is advanced threat protection enabled."
  default     = false
}

variable "enable_versioning" {
  type        = bool
  description = "Is blob versioning enabled? Default to `false`"
  default     = false
}

variable "file_shares" {
  description = "List of file shares to create and their quotas."
  type        = list(object({ name = string, quota = number }))
  default     = []
}

variable "hns_soft_delete_enabled" {
  type        = bool
  default     = false
  description = "Specifies whether hierarchical namespace soft delete is enabled."
}

variable "is_hns_enabled" {
  type        = bool
  description = "Is Hierarchical namespace enabled. This can only be true when sku is Standard or when account_tier is Premium and account_kind is BlockBlobStorage"
  default     = false
}

variable "last_access_time_enabled" {
  type        = bool
  description = "Is the last access time based tracking enabled? Default to `false`"
  default     = false
}

variable "network_rules" {
  description = "Network rules restricing access to the storage account."
  type = object({
    bypass                    = list(string),
    ip_rules                  = list(string),
    subnet_ids                = list(string),
    private_link_endpoint_ids = optional(list(string))
  })
  default = null
}

variable "queues" {
  description = "List of storages queues"
  type        = list(string)
  default     = []
}

variable "sftp_enabled" {
  type        = bool
  description = "Enable SFTP for the storage account. SFTP support requires `is_hns_enabled` set to `true`"
  default     = false
}

variable "shared_access_key_enabled" {
  type        = bool
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD)."
  default     = true
}

variable "skuname" {
  type        = string
  description = "The SKUs supported by Microsoft Azure Storage. Valid options are Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS"
  default     = "Standard_LRS"
}

variable "static_website" {
  description = "Static web site configuration. static_website can only be set when the account_kind is set to StorageV2 or BlockBlobStorage."
  type        = object({ index_document = string, error_404_document = string })
  default     = null
}

variable "tables" {
  description = "List of storage tables."
  type        = list(string)
  default     = []
}
