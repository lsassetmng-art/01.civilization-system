# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT MASTER READING GUIDE
# ============================================================

status: canonical-reading-guide
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. PURPOSE
This guide provides the recommended reading order for understanding
BusinessLegalSupport without needing to jump randomly across all files.

# 2. SHORTEST READING PATH
For fastest understanding, read in this order:

1. 0000001_BUSINESS_LEGAL_SUPPORT_OVERVIEW.md
2. 0000002_BUSINESS_LEGAL_SUPPORT_CANONICAL.md
3. 0000003_BUSINESS_LEGAL_SUPPORT_FULL_DESIGN_INTEGRATED.md
4. 0000004_BUSINESS_LEGAL_SUPPORT_FINAL_DESIGN_STATUS.md
5. 0000006_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETE_DECLARATION.md

# 3. RECOMMENDED FULL READING PATH
After the shortest path, continue:

6. 010.constitution/0100001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_OVERVIEW.md
7. 020.architecture/0200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_OVERVIEW.md
8. 030.model/0300001_BUSINESS_LEGAL_SUPPORT_MODEL_OVERVIEW.md
9. 050.flow/0500001_BUSINESS_LEGAL_SUPPORT_FLOW_OVERVIEW.md
10. 060.integration/0600001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_OVERVIEW.md
11. 080.policy/0800001_BUSINESS_LEGAL_SUPPORT_POLICY_OVERVIEW.md
12. 090.interface/0900001_BUSINESS_LEGAL_SUPPORT_INTERFACE_OVERVIEW.md
13. 100.security/1000001_BUSINESS_LEGAL_SUPPORT_SECURITY_OVERVIEW.md
14. 120.implementation/1200001_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_OVERVIEW.md
15. 130.development/1300001_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_OVERVIEW.md

# 4. IF YOU WANT DATA FIRST
Read these next:

- 030.model/020.detail/0300200002_BUSINESS_LEGAL_SUPPORT_ENTITY_DEFINITIONS.md
- 030.model/030.schema/0300300003_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_DEFINITIONS.md
- 030.model/040.ddl-readiness/0300400003_BUSINESS_LEGAL_SUPPORT_KEY_AND_CONSTRAINT_POLICY.md

# 5. IF YOU WANT API / PAYLOAD FIRST
Read these next:

- 120.implementation/020.payload/1200200001_BUSINESS_LEGAL_SUPPORT_PAYLOAD_OVERVIEW.md
- 120.implementation/020.payload/1200200002_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_PAYLOAD.md
- 060.integration/030.api-contract/0600300002_BUSINESS_LEGAL_SUPPORT_ENDPOINT_CATALOG.md
- 060.integration/030.api-contract/0600300003_BUSINESS_LEGAL_SUPPORT_WRITE_ENDPOINT_CONTRACT.md

# 6. IF YOU WANT UI FIRST
Read these next:

- 090.interface/020.detail/0900200002_BUSINESS_LEGAL_SUPPORT_SCREEN_CATALOG.md
- 090.interface/030.screen-fields/0900300003_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_LIST_AND_DETAIL_FIELDS.md
- 090.interface/030.screen-fields/0900300005_BUSINESS_LEGAL_SUPPORT_CONSULTATION_AND_SHARE_SCREEN_FIELDS.md

# 7. IF YOU WANT POLICY / SECURITY FIRST
Read these next:

- 080.policy/020.detail/0800200002_BUSINESS_LEGAL_SUPPORT_AI_LEGAL_BOUNDARY_POLICY.md
- 100.security/020.access-control/1000200002_BUSINESS_LEGAL_SUPPORT_ROLE_AND_PERMISSION_MATRIX.md
- 100.security/030.data-classification/1000300002_BUSINESS_LEGAL_SUPPORT_DATA_SENSITIVITY_MATRIX.md

# 8. IF YOU WANT FINAL PHASE JUDGMENT
Read these last:

- 0000005_BUSINESS_LEGAL_SUPPORT_NEXT_PHASE_HANDOFF.md
- 130.development/030.final-audit/1300300004_BUSINESS_LEGAL_SUPPORT_READINESS_JUDGMENT.md
- 130.development/030.final-audit/1300300005_BUSINESS_LEGAL_SUPPORT_FINAL_SIGNOFF_CRITERIA.md

# 9. READING NOTE
If the goal is simply to know whether the app is "ready enough on design":
- read the shortest path only

If the goal is to start implementation later:
- shortest path
- data first
- API / payload first
- policy / security first
