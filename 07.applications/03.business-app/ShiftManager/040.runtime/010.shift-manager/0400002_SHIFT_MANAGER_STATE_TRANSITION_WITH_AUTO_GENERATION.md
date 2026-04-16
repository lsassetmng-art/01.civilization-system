# ============================================================
# SHIFT MANAGER STATE TRANSITION WITH AUTO GENERATION
# ============================================================

status: design-fixed-candidate
type: state-transition-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes major state transitions in ShiftManager.

targeted state domains:
- schedule main state
- publication state
- share/visibility state
- notification state
- ERP linkage state
- auto-generation-related draft attributes

# ============================================================
# 2. BASIC PRINCIPLES
# ============================================================

principles:
1. auto generation still keeps schedule inside draft-side lifecycle
2. nothing becomes shared/visible unless published
3. auto generation does not change publication state directly
4. visibility is evaluated after publication
5. ERP export moves only after publication

# ============================================================
# 3. SCHEDULE MAIN STATE
# ============================================================

fixed_schedule_status:
- draft
- published
- superseded
- closed

additional_attributes:
generation_mode:
- manual
- auto_generated
- auto_generated_then_edited

has_generation_warnings:
- true
- false

auto_generated_flag:
- true
- false

# ============================================================
# 4. MAIN SCHEDULE TRANSITION
# ============================================================

main_transition:
new_schedule
-> draft

draft
- manual edit continue
- auto generate execute -> draft (generation_mode=auto_generated)
- auto generated then manual fix -> draft (generation_mode=auto_generated_then_edited)
- validate-for-publication -> draft
- publish -> published
- close -> closed

published
- start next edit -> draft
- republish -> new publication while schedule remains published-side lifecycle
- close -> closed

old_published_meaning:
- superseded when replaced by newer published result

# ============================================================
# 5. AUTO GENERATION TRANSITION
# ============================================================

auto_generation_flow:
condition_not_set
-> condition_set
-> auto_generation_execute
-> draft_generated
   - warning_free
   - with_warnings
   - with_unassigned
-> manual_adjustment
-> validate-for-publication
-> publish

important_rules:
- auto generation failure should not destroy existing draft
- auto generation result must go through review
- draft generation may succeed even with warnings/unassigned slots

# ============================================================
# 6. PUBLICATION STATE
# ============================================================

publication_status:
- active
- superseded
- cancelled

publication_transition:
draft
-> publish
-> publication(active)

publication(active)
- republish -> old publication(superseded) + new publication(active)
- cancel -> cancelled
- keep -> active

important_note:
schedule status and publication status are not the same.
schedule is app-side lifecycle.
publication is fixed version lifecycle.

# ============================================================
# 7. VALIDATE-FOR-PUBLICATION POSITION
# ============================================================

validate_position:
draft
-> validate-for-publication
-> ready = true/false
-> still draft

meaning:
- no state switch
- returns warnings/gaps/duplicates/readiness
- affects whether publish should proceed

# ============================================================
# 8. SHARE / VISIBILITY TRANSITION
# ============================================================

share_visibility_flow:
draft
-> publish
-> publication(active)
-> share-rule evaluation
-> view-scope generated
-> visible

share_state_concepts:
- not_share_target
- share_rule_defined
- share_preview_confirmed
- view_scope_generated
- visible
- share_stopped

recommended_representation:
do not force one single status column.
represent using share rules and evaluated view scope.

viewer_side_visibility:
- invisible
- visible_self
- visible_shared
- visible_manager_scope
- revoked

viewer_transition_examples:
unpublished -> invisible
publication + self assignment -> visible_self
publication + explicit share -> visible_shared
publication + management scope -> visible_manager_scope
share stop / permission revoke -> revoked

# ============================================================
# 9. NOTIFICATION STATE
# ============================================================

notification_delivery_status:
- queued
- sent
- failed
- read

notification_transition:
publication(active)
-> notification queue created
-> queued
   - delivery success -> sent
   - delivery failure -> failed
      - retry -> queued
   - user read -> read

important_rules:
- read is post-delivery user-side state
- failed must be retryable
- draft must not create publication notifications

# ============================================================
# 10. ERP LINKAGE STATE
# ============================================================

erp_export_status:
- not_required
- pending
- exporting
- success
- failed

erp_transition:
publication(active)
- not ERP target -> not_required
- ERP target -> pending -> exporting -> success / failed
- failed -> retry -> pending

important_rules:
- ERP export target is publication only
- republish creates a new ERP export target publication

# ============================================================
# 11. REPUBLISH WHOLE FLOW
# ============================================================

republish_whole_flow:
old_publication(active)
-> new draft edit
-> draft
-> republish
-> new_publication(active)
-> old_publication(superseded)
-> share reevaluation
-> view_scope rebuild
-> republish notification
-> ERP export pending

# ============================================================
# 12. WHOLE FLOW WITH AUTO GENERATION
# ============================================================

whole_flow_with_auto_generation:
condition_setting
-> auto_generate_execute
-> draft(auto_generated)
-> warning_review
-> manual_adjustment
-> draft(auto_generated_then_edited)
-> validate-for-publication
-> publish
-> publication(active)
-> share preview / share rule evaluation
-> view_scope generated
-> visible
-> notification queued/sent
-> ERP pending/exporting/success

# ============================================================
# 13. FORBIDDEN ACTIONS BY STATE
# ============================================================

draft:
- do not share to staff/public viewers
- do not export to ERP
- do not send publication notifications

publication(active):
- do not directly edit fixed publication rows
- create next draft for changes instead

superseded publication:
- do not treat as current visible version
- keep as history

failed notification / failed ERP export:
- do not swallow errors
- keep retryable state

# ============================================================
# 14. CRITICAL FIXATION POINTS
# ============================================================

critical_points:
- auto generation is represented as draft-side attributes, not a separate main status
- publish and visible are different states
- republish supersedes old publication
- ERP state is publication-based

# ============================================================
# 15. CONCLUSION
# ============================================================

ShiftManager state transition is cleanly organized by:
- schedule state
- publication state
- notification state
- ERP linkage state

Auto generation is best handled
as a draft-generation mode and pre-publication support flow,
not as automatic publication.

