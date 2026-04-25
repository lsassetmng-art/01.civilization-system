# ============================================================
# AI OPERATION DESK SUPPORTED APP REGISTRY SEED AND ONBOARDING EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: integration
owner: Boss
prepared_by: Zero

purpose:
Define how supported apps are seeded and onboarded in v1.

seed_policy_v1:
- seed ERP first
- seed Builder families second
- seed other apps only after QA scope and controlled write surfaces are clear

mandatory_seed_groups_v1:
- ERP
- CivilizationOS Builder families
- PersonaOS Builder families
- BusinessOS Builder families
- LifeOS Builder families
- GameOS Builder families
- StreamingOS Builder families
- StaticArtOS Builder families

minimum_onboarding_requirements:
- app_code fixed
- app_summary fixed
- app_purpose fixed
- support_status fixed
- resident_surface_supported fixed
- operation_qa_supported fixed
- supported task types fixed
- supported QA scopes fixed
- controlled write surfaces fixed
- risk note fixed
- review rule fixed
- approval rule fixed
- common errors fixed
- operation guides fixed

onboarding_steps:
1. define supported app registry row
2. define supported task types
3. define supported QA scopes
4. define supported write surfaces
5. define resident surface support yes/no
6. define review / approval defaults
7. define common errors
8. define operation guides
9. verify unsupported scope is explicitly excluded
10. approve app onboarding for AIOperationDesk support

explicit_rule:
- no app-specific QA before supported_app_registry onboarding
- no execution before write surface onboarding
- no resident surface support before context snapshot design is ready
