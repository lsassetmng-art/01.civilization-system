# ============================================================
# AI ROBOT OFFICE RESTRICTION MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: ai-robot-office-restriction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESTRICTIONS
# ============================================================

restrictions:
- ai_robot must not hold human_required offices
- ai_robot must not hold bloodline succession office
- ai_robot must not hold crown_heir office
- ai_robot must not hold judicial human-only office
- ai_robot must not hold civil_service_office by default


# ============================================================
# 2. ALLOWED BY DEFAULT
# ============================================================

allowed_by_default:
- support_execution_role
- infrastructure_maintenance_execution
- logistics_execution
- security_execution
- industrial_execution
- household_execution
- tactical_assist_execution


# ============================================================
# 3. FINAL RULE
# ============================================================

Ai_robot restrictions
must prevent office confusion
while preserving execution usefulness.
