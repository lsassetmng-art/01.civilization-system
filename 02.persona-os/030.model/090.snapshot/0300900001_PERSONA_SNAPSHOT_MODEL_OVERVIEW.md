# ============================================================
# PERSONA SNAPSHOT MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: snapshot
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of snapshot models.

summary:
Snapshot models define immutable point-in-time records
derived from eligible source truth.

scope:
snapshot record
source truth linkage
snapshot status
frozen truth structure

boundary:
Snapshot model does not replace live mutable truth.
Snapshot model must remain immutable after issuance.
Snapshot model is not identical to package or distribution record.
