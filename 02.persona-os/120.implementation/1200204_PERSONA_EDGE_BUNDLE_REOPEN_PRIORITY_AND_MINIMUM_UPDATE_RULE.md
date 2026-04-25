# PERSONA EDGE BUNDLE REOPEN PRIORITY AND MINIMUM UPDATE RULE

status: final-atlas-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_065738

purpose:
Defines how future updates should be limited after the atlas is created.

priority_order_for_future_followup:
1. single-function packet already closest to the question
2. matching bundle packet
3. atlas-level update only if packet boundaries change
4. cross-family baseline only if a real contradiction is discovered

minimum_update_rule:
- update the smallest packet that can fully answer the issue
- do not reopen sibling bundles without a concrete boundary conflict
- do not rewrite atlas documents for cosmetic function-local changes only
- update atlas documents only when packet membership, packet role, or cross-packet relation changes

allowed_reopen_examples:
- a function-level field naming contradiction
- a bundle-level lineage contradiction
- a truth ownership contradiction
- an external surface safety contradiction

forbidden_reopen_examples:
- redoing all edge design because one field name changed
- reopening all trust documents for one output wording issue
- reopening all release documents for one filter tweak
- reopening cross-family architecture without a named contradiction

hard_stop_rule:
If the proposed change does not alter packet role, packet membership, or packet boundary,
do not reopen atlas-level design.
