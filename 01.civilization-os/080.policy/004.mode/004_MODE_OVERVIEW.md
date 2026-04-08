# ============================================================
# 004 MODE OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the policy overview of the mode domain.

summary:
The mode policy layer defines what kinds of modes are allowed,
how modes may be disclosed,
which mode changes require authority,
how historical modes are retained,
and which transitions are prohibited.

policy_intent:
Mode is canonical context with operational consequences.
Policy exists to prevent hidden mode mutation,
unauthorized switching, unsafe disclosure,
and confusion between current and historical modes.

scope:
- mode disclosure policy
- mode activation policy
- mode transition policy
- historical retention policy
- authority policy
- public versus internal exposure policy

policy_rules:
- Mode must be explicit and typed.
- Unauthorized implicit mode creation is prohibited.
- Historical mode must be labeled and retained distinctly.
- Restricted operational modes must not be publicly disclosed in raw form.
- High-impact mode changes require explicit authority path.
