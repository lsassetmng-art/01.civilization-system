# ============================================================
# EXPENSE CANDIDATE INBOX SOURCE POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines candidate inbox source policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- candidate inbox is a support surface, not business truth
- candidate and formal expense object must remain distinct
- candidate source meaning must remain explicit and auditable
- candidate generation must not silently create approved business facts
- iphone, android, pc, and tablet must preserve the same candidate meaning
- multilingual display may vary, but candidate source semantics must remain canonical
- multi currency support must preserve candidate currency uncertainty vs confirmed currency fact

# ============================================================
# 1. CANDIDATE INBOX DESIGN GOAL
# ============================================================

candidate_inbox_design_goal:
- capture likely expense opportunities before the user forgets them
- let PocketSecretary and related support flows suggest expense candidates
- reduce manual re-entry while preserving explicit confirmation
- distinguish suggestion from formal report/item creation
- support traceability from source event to formal conversion

# ============================================================
# 2. WHAT A CANDIDATE IS
# ============================================================

candidate_definition:
- a candidate is a suggested possible expense-related record
- a candidate is not yet a formal expense_report or expense_item
- a candidate may contain inferred, partial, uncertain, or provisional values
- a candidate must be explicitly confirmed, edited, converted, or discarded

important_rule:
- candidate existence does not imply reimbursement eligibility
- candidate existence does not imply approval readiness
- candidate existence does not imply finance or ERP readiness

# ============================================================
# 3. PRIMARY SOURCE DOMAINS
# ============================================================

primary_source_domains:
- PocketSecretary event-derived source
- calendar / trip-context-derived source
- memo / note-derived source
- image / receipt-capture-derived source
- manual quick-capture source
- imported-support-source_if_policy_allows

source_domain_meaning:

  PocketSecretary event-derived source:
    meaning:
      - candidate created from assistant-observed or assistant-supported activity context

  calendar / trip-context-derived source:
    meaning:
      - candidate derived from meeting, travel, visit, stay, or trip-related context

  memo / note-derived source:
    meaning:
      - candidate derived from user note or shorthand memory capture

  image / receipt-capture-derived source:
    meaning:
      - candidate derived from captured receipt/photo/document context

  manual quick-capture source:
    meaning:
      - candidate manually created as lightweight placeholder before full entry

  imported-support-source_if_policy_allows:
    meaning:
      - candidate derived from external helper input if company policy later allows

# ============================================================
# 4. CANDIDATE TYPE MODEL
# ============================================================

candidate_type_model:
- transportation_candidate
- taxi_candidate
- business_trip_candidate
- lodging_candidate
- meal_candidate
- office_purchase_candidate
- training_fee_candidate
- advance_adjustment_candidate
- corporate_card_related_candidate
- generic_expense_candidate

important_rule:
- candidate_type is a suggestion type, not final category truth
- final expense category is fixed only after explicit user confirmation/edit

# ============================================================
# 5. CANDIDATE CORE MODEL
# ============================================================

candidate_core_model:
- candidate_id
- candidate_type
- source_system
- source_ref_id
- source_event_time
- candidate_title
- suggested_usage_date_nullable
- suggested_amount_nullable
- suggested_currency_code_nullable
- suggested_category_code_nullable
- suggested_payment_type_nullable
- suggested_project_code_nullable
- suggested_department_code_nullable
- confidence_level_nullable
- candidate_status
- created_at
- expires_at_nullable

notes:
- suggested_* fields are advisory, not final truth
- confidence_level supports UX prioritization, not business approval
- candidate_status must remain explicit

# ============================================================
# 6. CANDIDATE STATUS RULE
# ============================================================

candidate_status_rule:
- candidate_status must be explicit and visible
- candidate status examples:
  - new
  - viewed
  - converted
  - discarded
  - expired
  - merged

important_rule:
- converted candidate remains historically traceable
- discarded candidate is not silently forgotten if policy/history requires retention
- merged means consolidated into another candidate/object through explicit support logic

# ============================================================
# 7. SOURCE TRACE RULE
# ============================================================

source_trace_rule:
- every candidate must preserve source meaning
- candidate should keep enough reference to explain where it came from
- candidate source trace must not depend on human memory alone
- source trace is required even if the source text/image is later unavailable in UI
- source trace must remain separate from final expense object history

minimum_source_trace:
- source_system
- source_ref_id_or_equivalent
- source_event_time_or_capture_time
- candidate_generated_at
- candidate_generation_reason_summary

# ============================================================
# 8. CANDIDATE VS TEMPLATE RULE
# ============================================================

candidate_vs_template_rule:
- template is reusable preset
- candidate is event-/context-derived suggestion
- template starts from known reusable pattern
- candidate starts from observed or captured possible expense signal
- candidate may optionally flow through template-like guided conversion,
  but its origin meaning must remain candidate-based

# ============================================================
# 9. CANDIDATE VS FORMAL OBJECT RULE
# ============================================================

candidate_vs_formal_object_rule:
- candidate is not expense_report
- candidate is not expense_item
- candidate becomes formal object only after explicit conversion flow
- conversion must preserve trace to candidate origin
- candidate should not silently auto-convert into report/item without explicit user/business action

# ============================================================
# 10. CANDIDATE GENERATION RULE
# ============================================================

candidate_generation_rule:
- candidate generation may use context hints, assistant support, or manual quick-capture
- candidate generation should be additive and non-destructive
- generation should prefer useful suggestions over noisy overproduction
- candidate generation logic should be explainable at coarse level
- repeated generation from the same source should be merge-aware where policy allows

# ============================================================
# 11. CANDIDATE DUPLICATION RULE
# ============================================================

candidate_duplication_rule:
- multiple candidates may refer to the same real-world event
- candidate duplication should be detectable/supportable
- duplicate candidate handling may include:
  - keep separate
  - suggest merge
  - auto-group under visible logic
- candidate duplication handling must not delete source trace silently

important_rule:
- candidate duplication is different from expense duplicate claim
- a duplicate candidate does not prove fraudulent duplicate reimbursement

# ============================================================
# 12. CANDIDATE MERGE RULE
# ============================================================

candidate_merge_rule:
- merge is allowed only through visible support logic
- merged candidate history must preserve original source traces
- merge should produce one clearer working suggestion, not destroy provenance
- merge result should remain user-reviewable before formal conversion

# ============================================================
# 13. CANDIDATE EXPIRY RULE
# ============================================================

candidate_expiry_rule:
- candidate may expire if no longer useful
- expiry policy should be explicit and policy-controlled
- expired candidate is not the same as converted or discarded candidate
- expiry should not destroy audit-relevant source meaning if retention policy requires it
- user should understand why candidate is no longer active

# ============================================================
# 14. CANDIDATE CONVERSION RULE
# ============================================================

candidate_conversion_rule:
- candidate may convert into:
  - new expense report
  - new expense item appended to existing draft report
- conversion requires explicit user action
- conversion should allow review/edit before confirmation
- conversion must carry candidate linkage into formal history
- conversion must not auto-approve, auto-finance-pass, or auto-ERP-pass anything

minimum_conversion_trace:
- candidate_id
- converted_by_user_id
- converted_at
- target_mode
- resulting_expense_report_id
- resulting_expense_item_id_nullable

# ============================================================
# 15. CANDIDATE DISCARD RULE
# ============================================================

candidate_discard_rule:
- user may discard candidate where policy allows
- discard should be explicit
- discard reason may be optional or required by policy
- discard does not imply the source event was wrong, only that no formal expense flow is taken
- discard may remain historically traceable if candidate retention policy requires it

# ============================================================
# 16. CANDIDATE CONFIDENCE RULE
# ============================================================

candidate_confidence_rule:
- confidence supports ranking/prioritization only
- confidence must not change business authority
- low-confidence candidate may still be useful
- high-confidence candidate still requires user confirmation
- confidence should not be shown as false certainty

# ============================================================
# 17. AMOUNT / CURRENCY CANDIDATE RULE
# ============================================================

amount_currency_candidate_rule:
- candidate may have suggested_amount and suggested_currency_code
- suggested amount/currency may be missing or uncertain
- conversion to formal item requires explicit confirmation or correction
- candidate currency suggestion must not override actual receipt or user-confirmed fact
- mixed-currency candidate scenarios should remain visibly provisional until conversion

# ============================================================
# 18. EVIDENCE / IMAGE CANDIDATE RULE
# ============================================================

evidence_image_candidate_rule:
- receipt/photo-derived candidate may include linked image context
- linked image context does not equal accepted evidence state
- candidate generation from image must remain separate from evidence acceptance
- formal expense still goes through evidence policy matrix and review logic
- image-based candidate should help entry, not bypass evidence review

# ============================================================
# 19. NOTIFICATION RELATION RULE
# ============================================================

notification_relation_rule:
- candidate arrival may produce informational notification
- repeated low-value candidate noise should be suppressed or summarized
- candidate notification should deep-link to candidate inbox
- candidate notification is support-only and not an action-required business truth by itself

# ============================================================
# 20. VISIBILITY / ACCESS RULE
# ============================================================

visibility_access_rule:
- candidate inbox is primarily applicant-scoped
- approver does not normally view raw candidate inbox
- finance does not normally view raw candidate inbox
- admin should not view candidate content by default unless governance/support policy allows
- candidate visibility must respect company/user privacy and scope rules

# ============================================================
# 21. RETENTION / HISTORY RULE
# ============================================================

retention_history_rule:
- candidate lifecycle should remain explainable at least at coarse level
- conversion, discard, merge, and expiry are meaningful lifecycle events
- candidate history is supplementary to formal expense history
- once converted, formal object becomes the primary business object
- candidate history should not replace formal audit trail

# ============================================================
# 22. INITIAL SOURCE SHAPE
# ============================================================

initial_source_shape:
- trip schedule context from PocketSecretary
- visit/meeting context from PocketSecretary
- quick memo capture by user
- receipt image quick capture
- manual quick candidate creation
- business trip bundle suggestion from travel-related context

note:
- these are structural first-release source shapes
- exact source connectors or assistant logic details can be fixed later

# ============================================================
# 23. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- auto-creating approved expense reports from candidate generation
- treating candidate label as final expense category truth
- treating candidate amount/currency as immutable fact
- silently deleting source provenance on merge
- using candidate confidence as approval shortcut
- device-specific candidate meaning drift
- candidate source hidden from later explanation

# ============================================================
# 24. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact candidate expiration timing
- exact confidence display strategy
- exact merge heuristics
- exact discard-reason policy
- exact supported source-system catalog
- exact imported-support-source allowance
- exact candidate retention duration

note:
- this document fixes candidate inbox semantics and lifecycle
- exact organization-specific heuristics can be added later

# ============================================================
# 25. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps candidate inbox handling safe by separating:
- suggestion from business truth
- candidate from template
- candidate from formal expense object
- source provenance from current inbox display
- candidate confidence from approval or accounting authority

