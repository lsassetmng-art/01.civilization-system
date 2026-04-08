# ============================================================
# PERSONA PACKAGE ASSEMBLY POLICY
# ============================================================

status: canonical
layer: policy
domain: package
system: persona-os
owner: Boss
prepared_by: Zero

policy_rules:
package assembly must only use approved snapshot inputs
package contents must remain scope-bounded
package integrity must remain verifiable
