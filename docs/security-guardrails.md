# Security guardrails

## Trust and execution boundaries

This repository contains declarative examples. Creating or editing files in GitHub does not deploy anything to Azure. Terraform plans and ARM what-if previews still require cloud access and deployment-related permissions; reserve them for a dedicated sandbox subscription.

## Identity and permissions

- Use a dedicated deployment identity with least privilege scoped to the lab resource group and required deployment operations.
- Prefer workload identity or approved federated authentication for automation; avoid long-lived client secrets.
- Separate plan/review and apply permissions where feasible. Require a second-person approval for shared environments.
- Confirm the active Azure tenant, subscription, principal, and target resource group immediately before preview or deployment.

## Secrets and state

- Do not store secrets in source, ordinary parameter files, shell history, logs, outputs, tags, or CI artifacts.
- Use secure parameters or approved Key Vault references for ARM secret inputs.
- Treat Terraform state and saved plans as sensitive. Keep them out of Git; use an encrypted remote backend with access controls, locking, backups, and audit logging for team use.
- Use short-lived credentials and rotate/revoke them according to organizational policy.

## Network and resource posture

- The sample storage account disables public network access, anonymous blob access, and shared-key authorization and requires HTTPS/TLS 1.2.
- Private endpoints, private DNS, routing, diagnostics, monitoring, and a real consumer are out of scope. Disabled public access means the sample account is not directly reachable without a separately designed private path.
- Review organization policy, region availability, redundancy, data classification, retention, recovery, and expected cost before adapting any resource.

## Change safety

- Run formatting and static validation locally before preparing a change.
- Review Terraform plan or ARM what-if output, including replacements, deletions, implicit dependencies, and sensitive values.
- Do not apply if the target subscription or predicted changes are unclear. Use explicit scope, change approval, a recovery plan, and post-deployment verification.
- Never run the sample against a production subscription.

## Reporting

For any future real lab run, record tool versions, identity type, scope, reviewer, preview result, approval, deployment result, and verification evidence. Redact tenant, subscription, resource identifiers, and sensitive values before sharing evidence publicly.
