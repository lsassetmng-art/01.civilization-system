# ============================================================
# AI OPERATION DESK RESIDENT SURFACE AND EXECUTION FLOW FREEZE
# ============================================================

status: freeze-candidate
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

resident_targets:
- ERP
- CivilizationOS Builder families
- PersonaOS Builder families
- BusinessOS Builder families
- LifeOS Builder families
- GameOS Builder families
- StreamingOS Builder families
- StaticArtOS Builder families

resident_capabilities:
- screen explanation
- field explanation
- operation QA
- failure response QA
- draft assist
- execution request creation
- review / approval bridge
- voice intake

nonresident_mode:
- app help
- explanation
- operation QA
- request creation

core_rule:
- resident surface is lightweight and in-context
- heavy audit / retry / queue / settings stay in main console
