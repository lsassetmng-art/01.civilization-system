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
