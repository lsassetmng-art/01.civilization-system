# ============================================================
# BUSINESS APP LEDGER FIELD DEFINITION
# ============================================================

status: field-definition
owner: Boss
prepared_by: Zero

## key fields

| field | meaning |
|---|---|
| app_code | 台帳用アプリコード |
| folder_exists | 物理フォルダ有無 |
| physical_path | 物理配置パス |
| pricing_plan | 価格表現 |
| pricing_status | 価格根拠状態 |
| auth_boundary | 認証境界 |
| offline_policy | オフライン方針 |
| sync_policy | 同期方針 |
| explicit_send_policy | 明示送信方針 |
| source_file | 参照元統合資料 |
| source_file_found | 参照元ファイル検出有無 |
| source_file_path | 実解決された参照元パス |
| pricing_evidence_line | 価格根拠行 |
| erp_evidence_line | ERP根拠行 |
| auth_evidence_line | 認証根拠行 |
| offline_evidence_line | オフライン根拠行 |
| send_evidence_line | 送信根拠行 |
| schema_evidence_line | schema根拠行 |
| deeplink_evidence_line | deeplink根拠行 |
| pricing_evidence_summary | 価格根拠の要約 |
| review_owner | レビュー責任者 |
| db_review_owner | DBレビュー責任者 |
| release_owner | リリース責任者 |
| final_decider | 最終決裁者 |
| canonicalization_status | 正本化状態 |

## value rule

- file-confirmed
  - 統合資料内で価格確認済み
- user-confirmed-in-chat
  - チャット内ユーザー確定
- unknown
  - 未確定

- canonicalization_status = strong
  - source / pricing / owner が揃っている
- canonicalization_status = partial
  - 一部のみ揃っている
- canonicalization_status = weak
  - 根拠不足
