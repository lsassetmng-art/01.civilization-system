# ============================================================
# AIWORKER OS RANK STYLE AND ACCESS POLICY
# ============================================================

status: canonical
system: AiworkerOS
layer: 080.policy
owner: Boss
prepared_by: Zero

policy_axes:
- rank
- domain
- role
- lane
- company_style_profile
- allowed_view_family
- output_policy
- write_surface
- gate
- mode

hard_rules:
- rank is not equal to role
- rank is not equal to style
- style is not equal to authority
- domain specialization is not equal to unrestricted data access
- lane selection does not disable security policy

forbidden_shortcuts:
- no rank-based gate bypass
- no style-based approval bypass
- no role-based destructive unlock without gate
- no direct raw-table read because of domain fit

final_rule:
Access is granted by explicit policy composition,
not by single-axis privilege myths.
