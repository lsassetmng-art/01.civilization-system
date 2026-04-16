# CareerLaunch ERROR AND RESPONSE ENVELOPE POLICY
## Envelope
```json
{
  "ok": false,
  "code": "SYNC_CONFLICT",
  "message": "document revision conflict",
  "trace_id": "uuid"
}
```

## Rules
- machine-readable code 必須
- user-friendly message 必須
- conflict は silent merge 禁止
