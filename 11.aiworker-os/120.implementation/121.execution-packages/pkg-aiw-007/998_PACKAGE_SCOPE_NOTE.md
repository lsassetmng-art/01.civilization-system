# ============================================================
# PKG-AIW-007 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-007
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package is the orchestration and starter-verification layer for the execution packages.

core_rule:
- apply order is explicit
- environment precheck is explicit
- verification is package-based and repeatable
- full suite is separate from per-package verification

implementation_style:
- additive only
- no auto-apply during generation
- review-first DB execution
