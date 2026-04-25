# ============================================================
# PKG-AIW-007 APPLY ORDER AND VERIFICATION SCOPE
# ============================================================

status: execution-guide
package_code: PKG-AIW-007
system: AiworkerOS
owner: Boss
prepared_by: Zero

apply_order:
1. PKG-AIW-001 = canonical schema foundation
2. PKG-AIW-002 = controlled functions
3. PKG-AIW-003 = payload catalog and validation
4. PKG-AIW-004 = roles, grants, and RLS
5. PKG-AIW-005 = replay, recovery, and acceptance support
6. PKG-AIW-006 = acceptance execution and verification runbook support

verification_scope:
- PKG-AIW-001 foundation verification
- PKG-AIW-002 function verification
- PKG-AIW-003 payload verification
- PKG-AIW-004 security verification
- PKG-AIW-005 replay/recovery verification
- PKG-AIW-006 acceptance verification

full_suite_rule:
- full suite runs package-level verification in dependency order
- final result is only meaningful after preceding packages have been applied

hard_rules:
- do not skip apply order
- do not treat verification as optional after DB apply
