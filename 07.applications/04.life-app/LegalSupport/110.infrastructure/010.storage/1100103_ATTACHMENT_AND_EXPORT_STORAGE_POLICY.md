# ============================================================
# ATTACHMENT AND EXPORT STORAGE POLICY
# ============================================================

status: canonical-draft
system: life-app
app: LegalSupport

attachment_policy:
  attachment_types:
    - image
    - pdf
    - text
    - audio_future_candidate
  rules:
    - metadata と binary を分離する
    - binary は file_reference で参照する
    - 原本保管場所メモは metadata 側に持つ
    - reviewed_flag は metadata 側に持つ
    - confidentiality_level は metadata 側で管理する

binary_path_policy_candidates:
  documents:
    - /legal-support/cases/{case_id}/documents/{file_reference}
  evidence:
    - /legal-support/cases/{case_id}/evidence/{file_reference}
  export_packs:
    - /legal-support/cases/{case_id}/exports/{artifact_reference}

sensitive_handling_policy:
  normal:
    - 標準アクセス制御
  sensitive:
    - 共有時に除外可能
    - export 時に family_safe を既定候補にする
  highly_sensitive:
    - owner 限定閲覧候補
    - delegated_editor でも不可にできる
    - export 既定除外候補

export_pack_policy:
  pack_types:
    - consultation_summary
    - family_share
    - progress_summary
    - custom
  rules:
    - 生成物は原資料と別領域に置く
    - included_sections を必ず記録する
    - redaction_level を必ず記録する
    - 再生成時は新 artifact_reference を発行する
    - 古い生成物の削除は監査方針と分離して検討する

lifecycle_policy:
  upload:
    - metadata 作成
    - binary 保存
    - file_reference 紐付け
  replace:
    - 新 binary 保存
    - 新 file_reference 発行推奨
    - 旧 binary の扱いは retention policy に従う
  delete:
    - metadata 論理削除候補
    - binary 物理削除候補
    - 監査記録推奨
  export_generate:
    - case_share_pack 作成
    - artifact_reference 発行
    - export binary 保存
  export_regenerate:
    - 新 artifact_reference 発行
    - generated_at 更新
    - 古い artifact は世代管理候補

audit_recommendations:
  - high confidentiality attachment viewed
  - attachment replaced
  - attachment deleted
  - export generated
  - export downloaded
  - export revoked_or_invalidated_future_candidate

future_sync_notes:
  - local first を維持したまま同期導入可能な参照キー設計にする
  - file_reference と artifact_reference を同期境界の主キー候補に寄せる
