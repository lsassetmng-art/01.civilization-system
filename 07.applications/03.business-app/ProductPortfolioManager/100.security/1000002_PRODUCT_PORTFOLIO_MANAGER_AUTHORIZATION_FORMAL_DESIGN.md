# ============================================================
# PRODUCT PORTFOLIO MANAGER AUTHORIZATION FORMAL DESIGN
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the authorization model of ProductPortfolioManager.
The application requires explicit separation between
viewing, editing, managing, approving, and auditing.

authorization_principles:
- authority must be explicit
- viewing and deciding must remain distinct
- draft creation and final approval must remain distinct
- review operation and approval operation must remain distinct
- device differences must not change authority meaning
- ERP truth ownership must not be expanded through UI convenience

# ============================================================
# 1. ROLE SET
# ============================================================

official_roles:
- viewer
- editor
- manager
- approver
- admin
- auditor

role_definitions:

  viewer:
    summary:
      Can inspect portfolio information but cannot create or finalize judgment changes.

  editor:
    summary:
      Can create and update drafts, comments, and proposals,
      but cannot finalize approval-requiring outcomes.

  manager:
    summary:
      Can manage review operations, select targets, record review decisions,
      and submit items for approval.

  approver:
    summary:
      Can make formal approval decisions on approval-requested items.

  admin:
    summary:
      Can manage application-level configuration and operational control,
      but must still follow approval policy where required.

  auditor:
    summary:
      Can inspect audit-relevant history and approval traceability
      without automatically gaining business editing rights.

# ============================================================
# 2. PERMISSION DOMAINS
# ============================================================

permission_domains:
- portfolio_visibility
- product_detail_visibility
- score_visibility
- classification_draft_edit
- classification_finalize
- proposal_edit
- proposal_finalize
- review_session_manage
- review_decision_record
- approval_request_submit
- approval_decide
- alert_manage
- share_scope_manage
- audit_history_view
- settings_manage

# ============================================================
# 3. ROLE TO PERMISSION MATRIX
# ============================================================

role_permission_matrix:

  viewer:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: deny
    classification_finalize: deny
    proposal_edit: deny
    proposal_finalize: deny
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: deny
    approval_decide: deny
    alert_manage: deny
    share_scope_manage: deny
    audit_history_view: allow_limited
    settings_manage: deny

  editor:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: allow
    classification_finalize: deny
    proposal_edit: allow
    proposal_finalize: deny
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: allow_limited
    approval_decide: deny
    alert_manage: allow_limited
    share_scope_manage: deny
    audit_history_view: allow_limited
    settings_manage: deny

  manager:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: allow
    classification_finalize: allow_when_policy_permits
    proposal_edit: allow
    proposal_finalize: allow_when_policy_permits
    review_session_manage: allow
    review_decision_record: allow
    approval_request_submit: allow
    approval_decide: deny
    alert_manage: allow
    share_scope_manage: allow_limited
    audit_history_view: allow
    settings_manage: deny

  approver:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: optional_by_assignment
    classification_finalize: allow_via_approval
    proposal_edit: optional_by_assignment
    proposal_finalize: allow_via_approval
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: deny
    approval_decide: allow
    alert_manage: allow_limited
    share_scope_manage: deny
    audit_history_view: allow
    settings_manage: deny

  admin:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: allow
    classification_finalize: allow_when_policy_permits
    proposal_edit: allow
    proposal_finalize: allow_when_policy_permits
    review_session_manage: allow
    review_decision_record: allow
    approval_request_submit: allow
    approval_decide: allow_if_assigned
    alert_manage: allow
    share_scope_manage: allow
    audit_history_view: allow
    settings_manage: allow

  auditor:
    portfolio_visibility: allow_limited
    product_detail_visibility: allow_limited
    score_visibility: allow_limited
    classification_draft_edit: deny
    classification_finalize: deny
    proposal_edit: deny
    proposal_finalize: deny
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: deny
    approval_decide: deny
    alert_manage: deny
    share_scope_manage: deny
    audit_history_view: allow
    settings_manage: deny

# ============================================================
# 4. ACTION-LEVEL RULES
# ============================================================

action_level_rules:

  classification_draft_save:
    allowed_roles:
      - editor
      - manager
      - admin

  classification_finalize_without_approval:
    allowed_roles:
      - manager
      - admin
    condition:
      - only when policy explicitly marks the change as approval-not-required

  classification_finalize_via_approval:
    allowed_roles:
      - approver
      - admin
    condition:
      - through approval workflow only

  proposal_create_update:
    allowed_roles:
      - editor
      - manager
      - admin

  proposal_submit_for_review:
    allowed_roles:
      - editor
      - manager
      - admin

  proposal_approve:
    allowed_roles:
      - approver
      - admin
    condition:
      - approval required proposals only

  review_session_create:
    allowed_roles:
      - manager
      - admin

  review_session_edit:
    allowed_roles:
      - manager
      - admin
    condition:
      - only while session is not completed or archived

  review_decision_save:
    allowed_roles:
      - manager
      - admin

  approval_request_create:
    allowed_roles:
      - editor
      - manager
      - admin
    condition:
      - editor may submit only for owned or assigned items if policy allows

  approval_decision_save:
    allowed_roles:
      - approver
      - admin
    condition:
      - only for active approval requests

  share_scope_change:
    allowed_roles:
      - manager
      - admin
    condition:
      - subject to data visibility policy

  audit_history_read:
    allowed_roles:
      - manager
      - approver
      - admin
      - auditor

# ============================================================
# 5. ENTITY-LEVEL OWNERSHIP RULES
# ============================================================

entity_level_ownership_rules:

  product_portfolio_item:
    ownership_rule:
      - application users may manage portfolio-layer meaning
      - ERP truth ownership remains external

  product_classification_draft:
    ownership_rule:
      - draft owner may edit while draft is active
      - manager may edit if within workspace authority
      - approver should not silently rewrite draft contents during approval

  product_action_proposal:
    ownership_rule:
      - creator or assigned owner may edit while editable state remains active
      - manager may reassign or coordinate
      - approver approves or rejects; approver does not become proposal author

  product_review_session:
    ownership_rule:
      - review organizer or authorized manager controls session lifecycle

  product_approval_request:
    ownership_rule:
      - request ownership is procedural, not business ownership
      - approver controls decision, not target authorship

# ============================================================
# 6. STATE-SENSITIVE AUTHORIZATION RULES
# ============================================================

state_sensitive_rules:

  classification_draft:
    draft:
      - editable by owner editor, manager, admin
    submitted:
      - locked_for_general_edit
      - corrections require resend or policy-approved send-back handling
    withdrawn:
      - read_only
    superseded:
      - read_only

  proposal_status:
    draft:
      - editable by creator/owner/manager/admin
    submitted:
      - limited_edit
    in_review:
      - manager/admin coordination
    approved:
      - not freely rewritable as draft content
    rejected:
      - read_only_or_copy_to_new_draft_by_policy
    in_progress:
      - execution-tracking edits only
    completed:
      - read_only

  review_session_status:
    draft:
      - editable by manager/admin
    scheduled:
      - editable by manager/admin
    in_progress:
      - controlled update by manager/admin
    completed:
      - decision records should be treated as stable
    archived:
      - read_only

  approval_request_status:
    pending:
      - approver/admin may decide
    approved:
      - closed
    rejected:
      - closed
    sent_back:
      - closed_for_that_request
    on_hold:
      - approver/admin may later resolve

# ============================================================
# 7. VISIBILITY RULES
# ============================================================

visibility_rules:
- visibility is separate from edit authority
- a user may be allowed to view score detail without being allowed to modify drafts
- audit visibility may be broader or narrower than business edit rights based on policy
- share scope must not grant authority beyond role capability
- limited share must not bypass approval rules

visibility_tiers:
- private
- team
- org
- limited

# ============================================================
# 8. APPROVAL SEPARATION RULES
# ============================================================

approval_separation_rules:
- request creator should not self-approve unless policy explicitly permits it
- review recorder and final approver should be separable roles by default
- approval must not be inferred from edit authority
- approval must create explicit approval_decision history

# ============================================================
# 9. AUDIT EXPECTATIONS
# ============================================================

audit_expectations:
- denied finalization attempts should be security-loggable where needed
- approval decisions must remain attributable
- authority-sensitive changes to share scope should remain auditable
- classification finalization events should preserve before/after state
- role-based access outcomes should remain explainable to operators

# ============================================================
# 10. CROSS-DEVICE AUTHORITY PARITY
# ============================================================

cross_device_authority_parity:
- iphone, android, tablet, and pc may differ in layout
- authority meaning must remain identical across device classes
- no device may expose hidden privileged action that another device conceals without policy reason
- destructive or high-impact actions must remain explicit on all devices

# ============================================================
# 11. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager authorization must preserve
clear separation between seeing, drafting, managing, approving, and auditing.
The application must remain safe against
implicit authority expansion and hidden ERP-boundary erosion.
