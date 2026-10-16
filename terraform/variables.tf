variable "resource_group_name" {
  type        = string
  description = "Name for the dedicated lab resource group."
  default     = "rg-iac-portfolio-lab"
}

variable "location" {
  type        = string
  description = "Azure region for the lab resources."
  default     = "centralus"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique lowercase storage account name, 3-24 characters. Replace for your lab."
  default     = "sttfarmdemo001"

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Use 3-24 lowercase letters and numbers only."
  }
}

variable "tags" {
  type        = map(string)
  description = "Non-sensitive ownership and environment tags."
  default = {
    environment = "portfolio-lab"
    managedBy   = "terraform"
    purpose     = "synthetic-iac-example"
  }
}
