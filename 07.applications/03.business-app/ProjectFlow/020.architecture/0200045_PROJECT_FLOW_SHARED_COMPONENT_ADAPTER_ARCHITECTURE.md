# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines adapter and wrapper architecture
when ProjectFlow consumes official shared common components.

architecture_rules:
- ProjectFlow should not inject app-specific semantics directly into official shared components
- app-specific mapping should be handled by ProjectFlow-side adapters or wrappers
- shared component contract stays shared
- ProjectFlow-specific labels,
  visibility rules,
  grouping,
  and composition remain local unless officially shared elsewhere

adapter_targets:
- dashboard summary shell
- sync status shell
- export shell
- entitlement guard shell
- multilingual label shell
- customer material shell
- device parity layout shell

important_boundary:
Shared component ownership remains external.
ProjectFlow owns only local mapping and composition around it.
