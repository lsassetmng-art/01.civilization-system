# ============================================================
# AI OPERATION DESK OPERATION GUIDE SEED DICTIONARY EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: integration
owner: Boss
prepared_by: Zero

purpose:
Define the initial seed guide entries used for supported app explanation
and operation QA.

seed_entries_v1:

- guide_code: ERP_OVERVIEW
  supported_app_code: ERP
  guide_type: overview
  title_ja: ERPとは
  title_en: What ERP Is
  summary:
    ERP is a context-rich operational front and a formal caller of AI Operation Desk.

- guide_code: ERP_FIELD_EXPLANATION_GENERAL
  supported_app_code: ERP
  guide_type: field_explanation
  title_ja: ERP項目説明の基本
  title_en: ERP Field Explanation Basics
  summary:
    Explain meaning, effect, and related constraints of the currently focused ERP field.

- guide_code: ERP_OPERATION_QA_GENERAL
  supported_app_code: ERP
  guide_type: operation_qa
  title_ja: ERP操作QAの基本
  title_en: ERP Operation QA Basics
  summary:
    Provide step-by-step operation guidance within supported ERP scope.

- guide_code: ERP_FAILURE_RESPONSE_GENERAL
  supported_app_code: ERP
  guide_type: error_qa
  title_ja: ERP失敗対応の基本
  title_en: ERP Failure Response Basics
  summary:
    Explain likely causes, check points, and retry or escalation hints for ERP failures.

- guide_code: ERP_PROVISIONAL_VOUCHER_GUIDE
  supported_app_code: ERP
  guide_type: draft
  title_ja: ERP伝票仮起票ガイド
  title_en: ERP Provisional Voucher Guide
  summary:
    Create provisional voucher requests through governed draft flow.

- guide_code: BUILDER_OVERVIEW
  supported_app_code: BUILDER_FAMILY
  guide_type: overview
  title_ja: Builderとは
  title_en: What Builder Is
  summary:
    Builder surfaces are resident-support targets where AI Operation Desk explains screens, fields, and guided actions.

- guide_code: BUILDER_SCREEN_EXPLANATION_GENERAL
  supported_app_code: BUILDER_FAMILY
  guide_type: screen_explanation
  title_ja: Builder画面説明の基本
  title_en: Builder Screen Explanation Basics
  summary:
    Explain current Builder screen purpose, selected asset meaning, and likely next steps.

- guide_code: BUILDER_FIELD_EXPLANATION_GENERAL
  supported_app_code: BUILDER_FAMILY
  guide_type: field_explanation
  title_ja: Builder項目説明の基本
  title_en: Builder Field Explanation Basics
  summary:
    Explain Builder field meaning, value effect, and related constraints.

- guide_code: BUILDER_OPERATION_QA_GENERAL
  supported_app_code: BUILDER_FAMILY
  guide_type: operation_qa
  title_ja: Builder操作QAの基本
  title_en: Builder Operation QA Basics
  summary:
    Provide step-by-step Builder action guidance inside supported scope.

- guide_code: BUILDER_DRAFT_ASSIST_GUIDE
  supported_app_code: BUILDER_FAMILY
  guide_type: draft
  title_ja: Builder下書き支援ガイド
  title_en: Builder Draft Assist Guide
  summary:
    Create draft assist requests from Builder context with governed routing.

seed_rules:
- ERP entries apply only to supported ERP scope
- BUILDER_FAMILY means the same guide pattern replicated across each Builder family
- guide seed is not final localized content library, but the initial official seed
- app-specific expansion must preserve central guide type conventions
