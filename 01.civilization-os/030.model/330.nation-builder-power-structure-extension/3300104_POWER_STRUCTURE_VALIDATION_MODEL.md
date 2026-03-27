# ============================================================
# POWER STRUCTURE VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-power-structure-extension
component: power-structure-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VALIDATION GROUPS
# ============================================================

validation_groups:
- structure_integrity_validation
- scope_legality_validation
- transition_legitimacy_validation
- country_specific_validation


# ============================================================
# 2. STRUCTURE INTEGRITY VALIDATION
# ============================================================

structure_integrity_validation_rules:
- legislature_structure requires legislature_exists=true
- election_system_type requires executive_selection_method to be election-compatible
- amendment_rule must exist for constitutional states
- emergency_rule_ceiling must exist if emergency powers are supported
- sovereignty_distribution_base must be defined for federal or union structures


# ============================================================
# 3. SCOPE LEGALITY VALIDATION
# ============================================================

scope_legality_validation_rules:
- executive_power_level cannot exceed emergency_rule_ceiling without emergency activation
- local_discretion_level cannot exceed sovereignty_distribution_base maximum
- ministry_scope_map cannot claim abolished institutions
- delegation_map cannot assign powers to nonexistent offices
- practical_veto_usage_level cannot exceed constitutional veto allowance


# ============================================================
# 4. TRANSITION LEGITIMACY VALIDATION
# ============================================================

transition_legitimacy_validation_rules:
- locked fields require regime_change_mode
- regime_change_mode requires valid transition flag
- structure rewrite must create transition history
- reform cannot silently overwrite previous constitutional state


# ============================================================
# 5. COUNTRY-SPECIFIC VALIDATION
# ============================================================

country_specific_validation_rules:
- Helios must support formal monarchy with nontrivial informal influence expression
- Nova must support business and ASIC influence weighting
- Seiwa must support strong procedural bureaucracy
- Gladia must support command-heavy emergency scaling
- Orpheus must support low-centrality union and island autonomy
- Free Cities Union must support city-priority autonomy weighting
- Aurelia must support reconstruction and instability transition states


# ============================================================
# 6. FINAL RULE
# ============================================================

Validation must reject any configuration
that confuses constitutional structure
with operational scope.
