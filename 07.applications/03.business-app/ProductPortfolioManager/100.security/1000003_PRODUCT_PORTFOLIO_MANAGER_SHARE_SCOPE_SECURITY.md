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
