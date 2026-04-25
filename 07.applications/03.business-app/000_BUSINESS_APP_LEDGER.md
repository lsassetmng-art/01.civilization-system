# ============================================================
# BUSINESS APP LEDGER
# 01.civilization-system / 07.applications / 03.business-app
# strengthened canonical working ledger with evidence and owners
# ============================================================

status: strengthened-working-ledger-with-evidence
owner: Boss
prepared_by: Zero
updated_at: 2026-04-15 22:39:51
base_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app

## 0. purpose

この台帳は、
03.business-app 配下の業務系アプリについて、
価格・ERP境界・認証・オフライン・送信方針に加えて、
根拠行と責任者まで確認できるようにした強化版台帳である。

## 1. summary

| item | value |
|---|---:|
| total_apps | 26 |
| source_file_found_count | 12 |
| pricing_file_confirmed_count | 4 |
| pricing_chat_confirmed_count | 2 |
| pricing_unknown_count | 7 |
| pricing_evidence_found_count | 24 |
| auth_known_count | 21 |
| offline_known_count | 18 |
| explicit_send_known_count | 21 |
| deeplink_yes_count | 1 |
| schema_known_count | 13 |
| review_owner_known_count | 26 |
| release_owner_known_count | 26 |
| canonical_strong_count | 6 |

## 2. main ledger

| no | app_code | folder_name | app_name_en | pricing_plan | pricing_status | source_file_found | pricing_evidence_line | review_owner | release_owner | canonicalization_status |
|---:|---|---|---|---|---|---|---|---|---|---|
| 1 | BAPP-001 | AppDevelopmentStudio | AppDevelopmentStudio | trial:10days / monthly:1980JPY / yearly:16800JPY | file-confirmed | yes | 68 | Boss | Boss | strong |
| monthly/yearly same feature scope |  |  |  |  |  |  |  |  |  |  |
| 2 | BAPP-002 | EstimateCreator | EstimateCreator | Basic:free / Pro:500JPY_month | file-confirmed | yes | 224 | Boss | Boss | strong |
| basic free / pro paid |  |  |  |  |  |  |  |  |  |  |
| 3 | BAPP-003 | ExpenseSettlement | ExpenseSettlement | unknown | unknown | yes | 675 | Boss | Boss | partial |
| approval state and ERP state separated |  |  |  |  |  |  |  |  |  |  |
| 4 | BAPP-004 | InvoiceFlow | InvoiceFlow | unknown | unknown | yes | 1103 | Boss | Boss | partial |
| front-created invoice cannot become ERP master |  |  |  |  |  |  |  |  |  |  |
| 5 | BAPP-005 | Mbo | Mbo | unknown | unknown | yes | unknown | Boss | Boss | partial |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |
| 6 | BAPP-006 | NameCardManager | NameCardManager | monthly:900JPY | file-confirmed | yes | 90 | Boss | Boss | strong |
| AI chat support only |  |  |  |  |  |  |  |  |  |  |
| 7 | BAPP-007 | OrderFlow | OrderFlow | unknown | unknown | yes | 373 | Boss | Boss | partial |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |
| 8 | BAPP-008 | pocket-secretary | PocketSecretary | Free:free / Pro:300JPY_month / ForBusiness:700JPY_month | user-confirmed-in-chat | yes | user-chat-2026-04-14 | Boss | Boss | strong |
| user confirmed pricing in chat |  |  |  |  |  |  |  |  |  |  |
| 9 | BAPP-009 | ProductPortfolioManager | ProductPortfolioManager | unknown | unknown | yes | 651 | Boss | Boss | partial |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |
| 10 | BAPP-010 | ProjectFlow | ProjectFlow | trial:7days / monthly:900JPY | file-confirmed | yes | 229 | Boss | Boss | strong |
| PC and smartphone parity oriented |  |  |  |  |  |  |  |  |  |  |
| 11 | BAPP-011 | QuickForecast | QuickForecast | Basic:free / Pro:500JPY_month | user-confirmed-in-chat | yes | user-chat-2026-04-14 | Boss | Boss | strong |
| user confirmed pricing in chat |  |  |  |  |  |  |  |  |  |  |
| 12 | BAPP-012 | TalentGrowth | TalentGrowth | unknown | unknown | yes | 1888 | Boss | Boss | partial |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |
| 13 | BAPP-901 | ShiftManager | ShiftManager | unknown | unknown | no | unknown | Boss | Boss | weak |
| metadata missing |  |  |  |  |  |  |  |  |  |  |

## 3. implementation and governance ledger

| no | app_code | folder_exists | folder_name | app_name_ja | category | auth_boundary | offline_policy | explicit_send_policy | schema_name | implementation_phase | api_readiness | db_readiness | release_readiness | source_file | note |
|---:|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | BAPP-001 | yes | AppDevelopmentStudio | アプリ開発スタジオ | platform-builder | multi-layer-governed | unknown | explicit-apply-only | unknown | implementation-ready | partial-known | partial-known | not-assessed | 00_APP_DEVELOPMENT_STUDIO_INTEGRATED_REBUILT.md |  |
| monthly/yearly same feature scope |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 2 | BAPP-002 | yes | EstimateCreator | 見積作成アプリ | estimate-app | standalone-or-shared-auth | offline-drafting-supported | explicit-erp-publication-only | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_ESTIMATE_CREATOR_INTEGRATED.md |  |
| basic free / pro paid |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 3 | BAPP-003 | yes | ExpenseSettlement | 経費精算アプリ | expense-app | role-bound-review-and-access-control | offline-safe-drafting-and-retry | explicit-erp-publication-only | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_EXPENSE_SETTLEMENT_REGENERATED_FULL_PACK.md |  |
| approval state and ERP state separated |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 4 | BAPP-004 | yes | InvoiceFlow | 請求・入金確認フロント | invoice-app | shared-businessos-erp-reflection-boundary | unknown | shared-erp-reflection-only | unknown | integrated-design-present | exact-payload-present | not-assessed | not-assessed | 00_INVOICE_FLOW_INTEGRATED.md |  |
| front-created invoice cannot become ERP master |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 5 | BAPP-005 | yes | Mbo | MBO | management-app | unknown | unknown | unknown | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_MBO_FULL_INTEGRATED_CANONICAL.md |  |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 6 | BAPP-006 | yes | NameCardManager | 名刺管理アプリ | namecard-app | password-or-biometric-login-required | local-cache-offline-queue-and-replay | explicit-approval-governed-erp-publication | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_NAME_CARD_MANAGER_INTEGRATED.md |  |
| AI chat support only |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 7 | BAPP-007 | yes | OrderFlow | 受注フローアプリ | order-app | unknown | unknown | unknown | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_ORDER_FLOW_INTEGRATED.md |  |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 8 | BAPP-008 | yes | pocket-secretary | ポケット秘書 | hybrid-secretary-app | business-app-auth-inheritance-plus-erp-auth-context | offline-priority-local-first | explicit-button-based-erp-external-api-submission-only | unknown | integrated-design-present | erp-request-model-present | auth-context-model-present | not-assessed | 00_POCKET_SECRETARY_INTEGRATED_REBUILT.md |  |
| user confirmed pricing in chat |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 9 | BAPP-009 | yes | ProductPortfolioManager | ProductPortfolioManager | product-portfolio-app | unknown | unknown | unknown | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_PRODUCT_PORTFOLIO_MANAGER_FULL_INTEGRATED_REGENERATED.md |  |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 10 | BAPP-010 | yes | ProjectFlow | プロジェクト管理アプリ | project-management-app | action-authority-architecture-plus-erp-mediation | offline-cache-strategy | shared-businessos-import-export-mediation-no-direct-erp-call | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_PROJECT_FLOW_INTEGRATED.md |  |
| PC and smartphone parity oriented |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 11 | BAPP-011 | yes | QuickForecast | 需要予測アプリ | forecast-app | authority-boundary-explicit-but-not-erp-master | unknown | no-direct-erp-master-authority-defined | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_QUICK_FORECAST_INTEGRATED_REBUILT.md |  |
| user confirmed pricing in chat |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 12 | BAPP-012 | yes | TalentGrowth | 人材成長支援・人材評価システム | talent-app | unknown | unknown | unknown | unknown | integrated-design-present | not-assessed | not-assessed | not-assessed | 00_TALENT_GROWTH_INTEGRATED.md |  |
| price not fixed in current source |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 13 | BAPP-901 | yes | ShiftManager | unknown | unknown | unknown | unknown | unknown | unknown | not-assessed | not-assessed | not-assessed | not-assessed | unknown |  |
| metadata missing |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## 4. linked files

- 001_INDEX.md
- 002_OVERVIEW.md
- 003_FIELD_DEFINITION.md
- 004_SOURCE_EVIDENCE_MATRIX.md
- 005_OWNER_GOVERNANCE_MATRIX.md

## 5. rule

- unknown は未確定
- user-chat-2026-04-14 はチャット内ユーザー確定値
- canonicalization_status
  - strong: source + pricing + owner 系が揃っている
  - partial: 一部揃っている
  - weak: 根拠不足

- 2026-04-16 | NameCardManager | Phase A設計実装準備完了 | DDL / DTO freeze / stub plan / slice command packs / field-fill plans / execution entry protocol / design closure

- 2026-04-16 | NameCardManager | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable diff-audit recipe prepared

- 2026-04-16 | BusinessOS next target | PocketSecretary 推奨 | reuse leverage from NameCardManager / differential audit onboarding prepared / next bundle starter fixed

- 2026-04-16 | PocketSecretary | diff reinforcement bundle_01 completed | competitive positioning / conversation-action orchestration / assistant-memory follow-through / action timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | PocketSecretary | bundle_02 phase a entry completed | action timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | PocketSecretary | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | PocketSecretary | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | PocketSecretary | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | ProjectFlow | diff reinforcement bundle_01 completed | competitive positioning / delivery orchestration / milestone dependency risk / delivery timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | ProjectFlow | bundle_02 phase a entry completed | delivery timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | ProjectFlow | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | ProjectFlow | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | ProjectFlow | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | EstimateCreator | diff reinforcement bundle_01 completed | competitive positioning / estimate lifecycle pricing control / revision approval conversion / commercial decision timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | EstimateCreator | bundle_02 phase a entry completed | commercial timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | EstimateCreator | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | EstimateCreator | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | EstimateCreator | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | OrderFlow 推奨 | after four apps completed / commercial flow continuity from EstimateCreator / orderflow starter fixed

- 2026-04-16 | OrderFlow | diff reinforcement bundle_01 completed | competitive positioning / order lifecycle fulfillment control / approval fulfillment exception / order execution timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | OrderFlow | bundle_02 phase a entry completed | execution timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | OrderFlow | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | OrderFlow | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | OrderFlow | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | InvoiceFlow 推奨 | after five apps completed / commercial flow continuity from OrderFlow / invoiceflow starter fixed

- 2026-04-16 | InvoiceFlow | diff reinforcement bundle_01 completed | competitive positioning / billing collection control / settlement receivable exception / billing execution timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | InvoiceFlow | bundle_02 phase a entry completed | billing execution timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | InvoiceFlow | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | InvoiceFlow | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | InvoiceFlow | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | QuickForecast 推奨 | after six apps completed / management-layer continuity from InvoiceFlow / quickforecast starter fixed

- 2026-04-16 | QuickForecast | diff reinforcement bundle_01 completed | competitive positioning / forecast signal aggregation / scenario exception management / management forecast timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | QuickForecast | bundle_02 phase a entry completed | forecast timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | QuickForecast | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | QuickForecast | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | QuickForecast | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | ProductPortfolioManager 推奨 | after seven apps completed / management-layer continuity from QuickForecast / productportfoliomanager starter fixed

- 2026-04-16 | ProductPortfolioManager | diff reinforcement bundle_01 completed | competitive positioning / portfolio signal aggregation / prioritization scenario exception / portfolio control timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | ProductPortfolioManager | bundle_02 phase a entry completed | portfolio timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | ProductPortfolioManager | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | ProductPortfolioManager | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | ProductPortfolioManager | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | TalentGrowth 推奨 | after eight apps completed / capability-layer continuity from ProductPortfolioManager / talentgrowth starter fixed

- 2026-04-16 | TalentGrowth | diff reinforcement bundle_01 completed | competitive positioning / growth signal aggregation / readiness exception review / growth control timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | TalentGrowth | bundle_02 phase a entry completed | growth timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | TalentGrowth | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | TalentGrowth | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | TalentGrowth | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | ExpenseSettlement 推奨 | after nine apps completed / compliance-layer continuity from TalentGrowth / expensesettlement starter fixed

- 2026-04-16 | ExpenseSettlement | diff reinforcement bundle_01 completed | competitive positioning / settlement compliance control / receipt policy exception / settlement control timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | ExpenseSettlement | bundle_02 phase a entry completed | settlement timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | ExpenseSettlement | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | ExpenseSettlement | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | ExpenseSettlement | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS next target reselection | AppDevelopmentStudio 推奨 | after ten apps completed / development-control continuity from ExpenseSettlement / appdevelopmentstudio starter fixed

- 2026-04-16 | AppDevelopmentStudio | diff reinforcement bundle_01 completed | competitive positioning / development control / implementation blocker review / development control timeline model / exact payload / interface / implementation guide / diff audit

- 2026-04-16 | AppDevelopmentStudio | bundle_02 phase a entry completed | development timeline DDL additive plan / API starter / API DTO freeze / implementation skeleton / phase a audit

- 2026-04-16 | AppDevelopmentStudio | bundle_03 stub planning completed | stub file plan / module task breakdown / exact stub content order / stub audit

- 2026-04-16 | AppDevelopmentStudio | bundle_04 closeout completed | slice command packs / slice field-fill plan / implementation-ready completion / execution entry protocol / closeout audit

- 2026-04-16 | AppDevelopmentStudio | 次アプリ移行可能 | planning closed / Phase A design ready / execution deferred by default / reusable reinforcement recipe prepared

- 2026-04-16 | BusinessOS execution pack wave | start-ready | 11 completed apps mapped / first target NameCardManager / execution order fixed / execution start policy fixed

- 2026-04-16 | NameCardManager | execution pack start fixed | execution pack entry / safe stub generation protocol / SQL apply gate / execution pack audit

- 2026-04-16 | NameCardManager | live tree relocation executed | full-pack relocated additive-only / no-overwrite policy / compile=PASS / conflicts=0

- 2026-04-16 | NameCardManager | repository fill implemented | jdbc relationship query / jdbc company timeline query / jdbc capture insert / jdbc image staging insert / compile=PASS

- 2026-04-16 | NameCardManager | service controller smoke passed | fake repositories / fake audit / smoke runner / compile=PASS / run=PASS

- 2026-04-16 | NameCardManager | api exact payload adapter implemented | relationship/companytimeline/capture payload dto + facade + smoke / compile=PASS / run=PASS

- 2026-04-16 | PocketSecretary | execution pack start fixed | execution pack entry / safe stub generation protocol / SQL apply gate / execution pack audit

- 2026-04-16 | PocketSecretary | live tree relocation executed | full-pack relocated additive-only / no-overwrite policy / compile=PASS / conflicts=0

- 2026-04-16 | PocketSecretary | reviewed SQL executed | briefing / follow-through queue / conversation action support tables applied / verify=NO

- 2026-04-16 | PocketSecretary | persona-side SQL reapply executed | PERSONA_DATABASE_URL used / support tables re-applied / verify=YES
