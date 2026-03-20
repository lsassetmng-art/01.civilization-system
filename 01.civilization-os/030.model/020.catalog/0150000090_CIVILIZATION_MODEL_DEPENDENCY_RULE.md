# ============================================================
# CIVILIZATION MODEL DEPENDENCY RULE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0090
scope: civilization.model.dependency-rule
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define dependency discipline between models.


# ============================================================
# RULES
# ============================================================

dependencies must be explicit

no hidden cross-domain dependency

no circular dependency unless conceptually required

prefer graph relation over duplication

domain ownership must remain singular


# ============================================================
# EXAMPLES
# ============================================================

company depends_on labor_market  
company depends_on logistics  
company participates_in market  

bank depends_on regulation  
bank funds company  

nation depends_on territory  
nation depends_on population  
nation governs institutions


# ============================================================
# END
# ============================================================
