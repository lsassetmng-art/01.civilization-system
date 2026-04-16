# ============================================================
# LEGAL SUPPORT SUMMARY DISCLAIMER VARIATION EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

purpose:
  - summary / export / handoff / consultation prep で用途別の disclaimer を固定する
  - 同じ注意文を使い回しすぎず、用途に合った誤認防止を行う
  - 法律判断非提供の境界を出力面で維持する

disclaimer_variants:

  case_summary_preview:
    lines:
      - この要約は相談準備・整理支援のための表示です
      - 法的助言、法的結論、勝敗予測を示すものではありません

  family_share_summary:
    lines:
      - この共有要約は家族内共有のために整理された内容です
      - 非共有設定の情報や内部メモは含まれていません
      - 法的判断は専門家への相談を前提にしてください

  consultation_prep_packet:
    lines:
      - この資料は相談前準備のための整理資料です
      - 事実整理と確認事項整理を目的としており、法的助言ではありません
      - 未確認事項は未確認のまま残る場合があります

  export_pdf:
    lines:
      - このPDFは共有目的で出力された整理資料です
      - 含有項目は選択された範囲に限定されています
      - 法的結論や代理行為を提供するものではありません

  cross_app_handoff_preview:
    lines:
      - この内容は他アプリに渡すための要約payloadです
      - 元データの全文ではなく、選択された要約のみが対象です
      - 法的判断や内部メモは handoff 対象外です

  ai_summary_output:
    lines:
      - AI による整理要約です
      - 不確実な情報は未確認事項として扱う必要があります
      - 最終判断は専門家相談または公的確認を前提としてください

variation_rules:
  - family_share_summary は「非共有設定の情報が含まれない」ことを明示する
  - consultation_prep_packet は「未確認事項が残る」ことを明示する
  - cross_app_handoff_preview は「全文転送ではない」ことを明示する
  - ai_summary_output は AI 不確実性を明示する

display_policy:
  - preview と final output の両方に表示してよい
  - PDF/export では末尾固定表示を推奨する
  - screen preview では上部または下部の固定注意表示でよい
