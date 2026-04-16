# ============================================================
# NAMECARDMANAGER RELATIONSHIP TIMELINE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

direction:
  - do not rewrite the core schema
  - prefer additive query and read-model implementation
  - reuse existing relationship, activity, and order link structures
  - keep company timeline derived first
  - materialize later only if needed

phase_order:
  - freeze relationship query payload
  - freeze company timeline payload
  - implement relationship query endpoint
  - implement company timeline read query
  - expose capture staging screen contract
  - expose company timeline screen contract
  - wire ui afterward

no_break_rules:
  - no destructive rename
  - no ERP-first storage conversion
  - no collapse of approval and publication separation
  - no replacement of existing app share model
