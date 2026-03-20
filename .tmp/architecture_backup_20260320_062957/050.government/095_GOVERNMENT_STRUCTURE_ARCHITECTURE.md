# ============================================================
# GOVERNMENT STRUCTURE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Government is the executive structure operating the nation.

components:
- leader
- ministries
- ai_human_public_officers
- policy_execution_units

executive_functions:
- tax collection
- security management
- fiscal spending
- judicial administration
- diplomacy execution

constraints:
- ai_robot cannot hold public office
- ai_human can serve as public officer
- nation type changes executive shape
