# CareerLaunch LOGICAL COLUMN STANDARD
## Column standard
- 主キーは uuid。
- created_at / updated_at を基本列に含む。
- 通貨は amount + currency のペアで保持する。
- 多言語文書は language_code を必須化する。
- 改訂可能文書は latest_revision_no を持つ。
- 同期対象は sync_state を持つか、queue 側で管理する。
