# Deployment review checklist

Use this checklist before any real sandbox deployment. A preview is not approval to deploy.

## Before preview

- [ ] Confirm subscription, tenant, target resource group, and deployment identity.
- [ ] Confirm the subscription is an approved disposable lab and has budget alerts/limits.
- [ ] Review tool and provider versions; inspect lock files and provider changes.
- [ ] Confirm naming, region support, tags, Azure Policy constraints, and ownership.
- [ ] Review source for secrets, public exposure, destructive settings, broad permissions, and unpinned dependencies.
- [ ] Confirm backend and state access/recovery if Terraform is used.

## Review preview

- [ ] Run Terraform formatting, initialization, and validation.
- [ ] Generate a Terraform plan or ARM what-if against the intended scope.
- [ ] Review create/update/delete/replace actions and implicit dependencies.
- [ ] Check sensitive value redaction and ensure output artifacts are stored safely.
- [ ] Compare Terraform and ARM intent; investigate any difference.
- [ ] Obtain peer/security/cost review and record approval.

## Before apply

- [ ] Reconfirm selected subscription and identity immediately before apply.
- [ ] Use the reviewed plan or reviewed template and parameters.
- [ ] Confirm rollback, recovery, and owner contact.
- [ ] Apply only within approved change window and scope.

## After apply

- [ ] Verify resource configuration and access path using read-only queries.
- [ ] Confirm expected alerts, diagnostic records, and policy compliance.
- [ ] Record outcome, deviations, approvals, and evidence with sensitive identifiers redacted.
- [ ] Remove lab resources when no longer needed, following the approved cleanup plan.

No checklist item has been completed for a live Azure environment as part of this repository creation.
