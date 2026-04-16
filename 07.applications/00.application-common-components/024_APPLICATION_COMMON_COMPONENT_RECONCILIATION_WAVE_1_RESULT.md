# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 1 RESULT
# ============================================================

status: canonical-result
layer: application-common-components
domain: reconciliation-wave-result
wave: 1
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file records the reconciled output
of reconciliation wave 1.

This is still pre-fixed-promotion.
It defines merged family names,
absorbed names,
and the candidate subsets
that may later move into fixed-promotion planning.

# ============================================================
# 1. RECONCILED FAMILY RESULTS
# ============================================================

reconciled_families:

  - reconciled_family_name: Local-first Draft / Cache / Replay Common
    owner_side: BusinessOS common
    merged_from:
      - Business Draft + Pending Operation Common
      - Business Draft Common
      - Pending Operation Common
      - Sync State Common
      - Local-first Cache / Offline Replay Common
    family_scope:
      - local cache contract
      - offline editable state
      - draft persistence
      - pending operation queue
      - replay / retry rule
      - sync failure visibility
      - conflict-safe recovery hint
    absorbed_names:
      - Business Draft Common
      - Pending Operation Common
    retained_subfamilies:
      - sync-state vocabulary
      - draft-state visibility
    fixed_promotion_subset_candidate:
      - Local-first Draft / Cache / Replay Common
    note:
      This becomes the broader parent family.
      Older draft-only names should now be treated as narrower subfamily language.

  - reconciled_family_name: Explicit Share Scope / Delegated Access Common
    owner_side: BusinessOS common
    merged_from:
      - Explicit Share Scope / Delegated Access Common
      - Share Scope Indicator
      - Role-aware Action Visibility Layer
    family_scope:
      - explicit share only
      - owner / editor / viewer
      - delegated_editor
      - readonly share target
      - revocable share
      - approval-governed publication boundary
      - scope-based visibility
    absorbed_names:
      - Share Scope Indicator
    retained_subfamilies:
      - Role-aware Action Visibility Layer
    fixed_promotion_subset_candidate:
      - Explicit Share Scope / Delegated Access Common
    note:
      Share meaning becomes the parent family.
      Action visibility remains a reusable sub-layer rather than being discarded.

  - reconciled_family_name: Reminder / Due / Follow-up Common
    owner_side: BusinessOS common
    merged_from:
      - Reminder / Due / Follow-up Common
      - Notification Inbox Framework
      - Collection Action / Follow-up History Core
      - Alert Center Component
    family_scope:
      - reminder target model
      - due-date trigger model
      - next-action reminder
      - follow-up queue
      - advisory notification rule
      - duplicate suppression
      - dashboard escalation hint
    absorbed_names:
      - none
    retained_subfamilies:
      - Notification Inbox Framework
      - Alert Center Component
      - Collection Action / Follow-up History Core
    fixed_promotion_subset_candidate:
      - Reminder / Due / Follow-up Common
    note:
      Reminder/due/follow-up becomes the meaning model.
      Inbox and alert surfaces remain child UI families.

  - reconciled_family_name: Template Materialization Common
    owner_side: Application common
    merged_from:
      - Template Materialization Common
      - Template Selection Surface
      - Template Selection Surface
      - template/admin/template-editor family fragments
    family_scope:
      - app default template
      - user reusable template
      - locale-specific template
      - industry/domain-specific template
      - template selection
      - template expansion to draft
      - template revision trace
    absorbed_names:
      - Template Selection Surface
    retained_subfamilies:
      - template admin/editor surfaces
    fixed_promotion_subset_candidate:
      - Template Materialization Common
    note:
      Selection UI is now a child responsibility inside the broader materialization family.

# ============================================================
# 2. WAVE 1 ABSORPTION SUMMARY
# ============================================================

absorption_summary:
- Business Draft Common -> Local-first Draft / Cache / Replay Common
- Pending Operation Common -> Local-first Draft / Cache / Replay Common
- Share Scope Indicator -> Explicit Share Scope / Delegated Access Common
- Template Selection Surface -> Template Materialization Common

retained_as_subfamilies:
- Sync State Common
- Role-aware Action Visibility Layer
- Notification Inbox Framework
- Alert Center Component
- Collection Action / Follow-up History Core
- template admin/editor families

# ============================================================
# 3. WAVE 1B FIXED-PROMOTION SUBSET CANDIDATES
# ============================================================

wave_1b_fixed_promotion_subset_candidates:
- Local-first Draft / Cache / Replay Common
- Explicit Share Scope / Delegated Access Common
- Reminder / Due / Follow-up Common
- Template Materialization Common

wave_1b_interpretation:
These four reconciled family names
are now the correct reduced subset
for the next fixed-promotion planning step.

# ============================================================
# 4. DECISION RULES AFTER WAVE 1
# ============================================================

post_wave_1_rules:
- do not promote absorbed old names independently
- use reconciled family names as the primary names going forward
- keep child UI families below meaning/contract parent families
- fixed-promotion selection should use only the wave_1b subset names

# ============================================================
# 5. FINAL JUDGMENT
# ============================================================

final_judgment:
Reconciliation wave 1 is complete.
The workspace should now move to wave 1b:
fixed-promotion subset selection.

# ============================================================
