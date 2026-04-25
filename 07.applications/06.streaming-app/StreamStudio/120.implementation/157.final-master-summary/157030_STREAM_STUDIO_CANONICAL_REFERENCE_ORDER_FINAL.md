# ============================================================
# STREAM STUDIO CANONICAL REFERENCE ORDER FINAL
# ============================================================

status: reference-order
layer: implementation-summary
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the final canonical reference order across the total StreamStudio design set.

canonical_reference_order:

  order_1:
    - 121 implementation readiness final freeze memo
    - 157 total design master summary

  order_2:
    - architecture
    - model
    - screen state transition exact
    - api exact docs
    - runtime exact
    - permission matrix exact

  order_3:
    - enum ledger
    - field dictionary
    - audit event code ledger
    - event naming ledger
    - ui copy key ledger
    - db-side mapping decision memo

  order_4:
    - phase 1 workpackages
    - phase 1 fileset packs
    - phase 1 sql-pre-ddl
    - phase 1 sql bundle
    - phase 1 post-apply verify bundle
    - phase 1 final handoff pack

  order_5:
    - phase 2 to phase 6 roadmap pack
    - phase 1 to phase 6 master roadmap pack

reference_rule:
When documents seem to overlap,
prefer the later freeze / exact / ledger / master-summary documents
over earlier broad descriptions.

fixed_statement:
This is the final canonical reference order for StreamStudio design reading.
