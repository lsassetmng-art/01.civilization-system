# ============================================================
# PROJECT FLOW MULTI DEVICE ARCHITECTURE EXTENSION
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Extends device architecture from smartphone/pc wording
to explicit iPhone, Android, tablet, and PC support.

supported_targets:
- iPhone
- Android
- tablet
- PC

architecture_rules:
- feature parity applies to all supported device types
- tablet is treated as a first-class supported form factor
- iPhone and Android are both first-class smartphone targets
- PC may use denser layout,
  but must not gain exclusive business capability
- tablet may use split or hybrid layout,
  but must not gain exclusive business capability
