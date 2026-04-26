# ============================================================
# AICompanyManager Multi Company Organization Settings Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase U
status: multi-company-organization-settings-designed

## 1. Canon

AICompanyManager must support multiple user-owned companies.

Each company has:
- company_id
- company_name
- business_domain
- company_policy
- robot_naming_rule
- organization_definition
- delivery_policy
- active_pipeline_snapshot

## 2. Company Settings

The setting screen owns:
- company name
- business domain
- robot naming rule
- organization definition
- policy input
- delivery acceptance rule

The company dashboard must not be the main policy input surface.

## 3. Organization Model

The organization is not one line.

Minimum v1 format:
- organization unit name
- unit purpose
- assigned AI role
- deliverable responsibility
- parent unit if needed

For mock implementation, textarea input may use one unit per line, but the internal model treats it as a list of organization units.

## 4. Robot Naming

Robot naming is company-level configuration.

Examples:
- Prefix by company
- Role-based naming
- Department-based naming
- Sequential naming

Example:
- President: ACM-PRES-001
- Manager: ACM-MGR-001
- Leader: ACM-LDR-001
- Worker: ACM-WRK-001

## 5. Dashboard Rule

Company dashboard should be horizontal.

Column 1:
- company overview

Column 2:
- role progress

Column 3:
- current work and AI review status

Column 4:
- delivery gate for human acceptance

## 6. Local Queue Rule

Local queue remains internal if technically needed.

It is not shown as a primary user-facing feature.

User-facing label:
- 保存状態
- 同期待ち
- 自動保存
- 最終更新

Do not expose queue payloads to normal users.
