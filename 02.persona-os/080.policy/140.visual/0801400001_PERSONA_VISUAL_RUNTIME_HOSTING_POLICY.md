# ============================================================
# PERSONA VISUAL RUNTIME HOSTING POLICY
# ============================================================

status: canonical
layer: policy
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POLICY PURPOSE
# ============================================================

This policy defines mandatory rules
for applications hosting Visual Runtime.


# ============================================================
# 2. MANDATORY HOST RULES
# ============================================================

1. Host must use canonical public interface.
2. Host must use approved surface contracts.
3. Host must not redefine runtime fallback semantics.
4. Host must dispose runtime session explicitly.
5. Host must not embed builder-only logic into runtime usage.
6. Host must not treat optional background failure
   as persona render failure unless contract says so.


# ============================================================
# 3. POLICY ON APP-SPECIFIC CUSTOMIZATION
# ============================================================

Hosts may customize:

outer loading chrome
surrounding layout
interaction shell
host analytics

Hosts may not customize:

canonical background priority
canonical render lifecycle semantics
canonical runtime state machine


# ============================================================
# 4. POCKETSECRETARY POLICY
# ============================================================

PocketSecretary must act as a compliant host.

PocketSecretary-specific UX may exist,
but Visual Runtime semantics must remain canonical.

# EXACT READY POLICY REINFORCEMENT

status_extension: author-reviewed-with-policy-reinforcement
reinforced_at: 20260417_152041
domain: visual

minimum_policy_requirements:
- define what is allowed
- define what is blocked
- define decision boundary
- define lifecycle or retention rule where applicable
- define exception handling where applicable

mandatory_policy_controls:
- no ambiguous allow or deny condition
- no silent override
- no missing retention or expiry rule where applicable

minimum_policy_acceptance_targets:
- allowed case
- blocked case
- exception or expiry case where applicable
