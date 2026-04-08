# ============================================================
# PERSONA PACKAGE ASSEMBLY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: package
system: persona-os
owner: Boss
prepared_by: Zero

runtime_rules:
package assembly must use approved snapshot inputs
package assembly must preserve manifest integrity
package output must remain auditable and reproducible
