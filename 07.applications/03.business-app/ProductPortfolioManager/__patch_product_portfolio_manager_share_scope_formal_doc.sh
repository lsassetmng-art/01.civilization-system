#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/080.policy" \
  "$BASE/100.security" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/080.policy/0800005_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for sharing and visibility scope
inside ProductPortfolioManager.

policy_principles:
- sharing determines visibility, not final authority
- broader visibility must not silently grant edit rights
- sharing must remain explicit, reviewable, and revocable
- high-impact visibility expansion may require stricter handling
- sharing must respect ERP-boundary and approval-boundary rules

# ============================================================
# 1. SHARE TYPES
# ============================================================

official_share_types:
- private
- team
- org
- limited

share_type_meanings:
  private:
    Visible only to the owner and explicitly authorized high-privilege roles.
  team:
    Visible to a bounded team scope.
  org:
    Visible to a broader organizational scope permitted by policy.
  limited:
    Visible only to explicitly enumerated users, roles, or teams.

# ============================================================
# 2. SHARE TARGET TYPES
# ============================================================

official_shared_to_types:
- user
- role
- team
- org

policy_rule:
Share targets must be explicit and machine-interpretable.
Ambiguous "everyone nearby" style visibility is not allowed.

# ============================================================
# 3. SHAREABLE ENTITY POLICY
# ============================================================

shareable_entities:
- product_portfolio_item visibility context
- product_action_proposal
- product_review_session
- product_review_decision
- product_comment where policy and visibility permit
- product_alert visibility where operationally needed
- audit/history visibility where role permits

non_share_policy_examples:
- raw ERP authority is not transferred by sharing
- approval authority is not transferred by sharing
- hidden internal-only notes may remain non-shareable by policy
- source-of-truth ownership does not move because of sharing

# ============================================================
# 4. SHARE VS AUTHORITY POLICY
# ============================================================

share_vs_authority_policy:
- visibility does not automatically grant edit authority
- visibility does not automatically grant approval authority
- visibility does not automatically grant review-management authority
- limited share cannot bypass role restrictions
- organization-wide visibility does not equal organization-wide control

# ============================================================
# 5. SENSITIVE VISIBILITY POLICY
# ============================================================

sensitive_visibility_policy:
- high-impact classification candidates may require bounded visibility before finalization
- draft proposals may remain narrower than approved proposals
- unresolved high-severity alerts may require role-aware visibility control
- audit views may be broader or narrower than business editing views depending on policy

# ============================================================
# 6. SHARE CHANGE POLICY
# ============================================================

share_change_policy:
- share scope changes must be explicit actions
- broader share expansion may require stronger authority than narrower sharing
- revocation should be supported where business rules permit
- share changes should remain historically traceable
- revoked visibility should stop future access subject to caching and operational rules

# ============================================================
# 7. DEFAULT VISIBILITY POLICY
# ============================================================

default_visibility_policy:
- new drafts should default to a bounded scope
- formalized outputs may expand visibility according to policy
- review sessions may default to participant-bounded visibility
- alerts should be visible to roles necessary for timely handling, not automatically to everyone

# ============================================================
# 8. CROSS-WORKSPACE / CROSS-COMPANY POLICY
# ============================================================

cross_scope_policy:
- cross-workspace visibility requires explicit policy support
- cross-company visibility is disallowed unless a higher-order policy explicitly defines it
- visibility boundaries must remain consistent with company_id and workspace_id semantics

# ============================================================
# 9. AUDITABILITY POLICY
# ============================================================

auditability_policy:
- share creation should be traceable
- share expansion should be traceable
- share revocation should be traceable
- high-impact visibility changes should be attributable to actor and time

# ============================================================
# 10. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Sharing in ProductPortfolioManager
must remain explicit, bounded, revocable, and separate from business authority.
EOF

cat <<'EOF' > "$BASE/100.security/1000003_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_SECURITY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines security-oriented rules for enforcing share scope
without collapsing role-based authority boundaries.

security_principles:
- access decisions must combine role and share scope
- deny by default is preferred when visibility is unclear
- revoked share must stop future authorized access
- share scope enforcement must remain explainable
- share shortcuts must not bypass approval or edit restrictions

# ============================================================
# 1. ACCESS DECISION MODEL
# ============================================================

access_decision_model:
Access to a target entity should be determined by:
- authenticated identity
- role assignment
- company/workspace scope
- share scope record
- entity state where relevant
- policy exceptions where explicitly defined

access_formula_summary:
visibility = role_scope_check AND share_scope_check AND entity_policy_check

# ============================================================
# 2. SECURITY RULES BY SHARE TYPE
# ============================================================

share_type_security_rules:

  private:
    - only owner and explicitly privileged authorized roles may access
    - private does not mean invisible to all admins if policy grants oversight

  team:
    - access limited to members of target team scope plus authorized oversight roles

  org:
    - access limited to authorized organization scope, still bounded by role capability

  limited:
    - access limited to enumerated recipients and authorized oversight roles

# ============================================================
# 3. REVOCATION SECURITY RULES
# ============================================================

revocation_security_rules:
- revoked_at must make future access fail unless another valid grant remains
- revocation should not erase historical audit trace
- cached visibility should be treated carefully so revoked access does not linger improperly

# ============================================================
# 4. SHARE CHANGE AUTHORITY RULES
# ============================================================

share_change_authority_rules:
- viewer cannot change share scope
- editor cannot broadly expand share unless policy explicitly permits
- manager may manage bounded business sharing where authorized
- admin may manage broader sharing subject to policy
- auditor may inspect share history without automatically changing share state

# ============================================================
# 5. ENTITY-SPECIFIC SECURITY NOTES
# ============================================================

entity_specific_security_notes:

  product_action_proposal:
    - draft proposals should usually remain narrower than broadly visible approved outputs

  product_review_session:
    - participant-bounded visibility may be required before completion

  product_review_decision:
    - visibility may depend on whether the decision is draft-like, pending approval, or finalized

  product_comment:
    - internal comments may require tighter visibility than surrounding product detail

  product_alert:
    - operational relevance may justify broader visibility than draft business notes

# ============================================================
# 6. SECURITY FAILURE EXPECTATIONS
# ============================================================

security_failure_expectations:
- unauthorized share-scope change attempts should be rejectable and optionally loggable
- access-denied responses should not leak hidden entity content
- visibility mismatch should fail safe rather than fail open

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Share-scope security in ProductPortfolioManager
must preserve explicit bounded access
without granting hidden edit or approval power.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200007_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for share scope handling
without entering implementation code.

# ============================================================
# 1. REQUIRED SHARE MODEL FIELDS
# ============================================================

required_share_model_fields:
- share_scope_id
- target_entity_type
- target_entity_id
- share_type
- shared_to_type
- shared_to_id
- created_by_user_id
- created_at
- revoked_at

# ============================================================
# 2. REQUIRED UI SURFACES
# ============================================================

required_ui_surfaces:
- share scope summary on shareable entities where relevant
- share scope detail / confirmation surface
- share creation flow
- share revocation flow
- share history visibility where role permits

# ============================================================
# 3. REQUIRED USER ACTIONS
# ============================================================

required_user_actions:
- create bounded share
- expand share where authorized
- revoke share where authorized
- inspect who currently has visibility
- inspect share history where permitted

# ============================================================
# 4. VALIDATION REQUIREMENTS
# ============================================================

validation_requirements:
- target_entity_type must be explicit
- target_entity_id must resolve to a valid entity
- share_type must be one of private/team/org/limited
- shared_to_type must be one of user/role/team/org
- invalid scope combinations must be rejected
- revoked shares must not be treated as active

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- the UI should make clear that sharing affects visibility, not authority
- the UI should show current share type in plain language
- broader visibility changes should be explicit before confirmation
- revocation effects should be understandable to the operator

# ============================================================
# 6. TRACEABILITY REQUIREMENTS
# ============================================================

traceability_requirements:
- share creation should be traceable
- share modification should be traceable
- share revocation should be traceable
- important visibility expansions should remain auditable

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready share labels and explanations
- cross-device consistent meaning
- no hidden share changes through indirect actions
- no assumption that visible means editable
- no assumption that visible means approvable

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must handle share scope
as an explicit visibility-control layer,
not as a shortcut for authority transfer.
EOF

echo "PATCHED: share scope formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/100.security" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
