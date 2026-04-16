# CareerLaunch RETENTION AND SOFT DELETE POLICY
## Retention
- document_revision と interview_session_note は監査・振り返りのため保持優先。
- soft delete を標準とし、ユーザー削除は restore 可能期間を設ける。
- export artifact は再生成可能なら短期保持、監査メタは長期保持。
