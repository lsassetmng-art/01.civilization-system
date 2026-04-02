# ============================================================
# POLICY RETIREMENT DECISION
# ============================================================

status: decided
prepared_by: Zero

decision:
- active_policy_root: 080.policy
- retired_policy_root: 070.policy

reason:
- 070.policy contains only one legacy generic finance-credit policy file.
- 080.policy contains the structured and expanded canonical policy hierarchy.
- The 070 generic finance-credit policy was preserved as a legacy reference under 080.policy/170.finance-credit.

actions_taken:
- copied:
  - 070.policy/170.finance-credit/0701300_CIVILIZATION_FINANCE_CREDIT_GENERIC_POLICY.md
  - to:
  - 080.policy/170.finance-credit/0801399_CIVILIZATION_FINANCE_CREDIT_GENERIC_POLICY_LEGACY_REFERENCE.md
- archived:
  - 070.policy
  - to:
  - 999.archive/070.policy_retired_20260401/

final_rule:
- 080.policy is the only active policy root.
- 070.policy must not be used as an active canonical root anymore.
