# CareerLaunch JOB POSTING AND APPLICATION PAYLOAD
## Job posting and application payload
```json
{
  "application_id": "uuid",
  "company": {
    "id": "uuid",
    "name": "Example Inc."
  },
  "job_posting_id": "uuid",
  "status": "面接予定",
  "applied_at": "2026-04-15T09:00:00+09:00",
  "document_bundle_id": "uuid",
  "interview_at": "2026-04-20T13:00:00+09:00",
  "thank_you_status": "not_sent",
  "checklists": {
    "pre_application": {
      "completed": 7,
      "total": 7
    },
    "pre_interview": {
      "completed": 8,
      "total": 10
    },
    "post_interview": {
      "completed": 0,
      "total": 6
    }
  }
}
```

## Job posting paste payload
```json
{
  "job_posting_id": "uuid",
  "source_url": "https://example.com/jobs/123",
  "job_title": "カスタマーサクセス",
  "company_name": "Example Inc.",
  "posting_language": "ja",
  "compensation_currency": "JPY",
  "posting_body": "求人票全文...",
  "must_requirements": [
    "SaaS経験",
    "法人折衝経験"
  ],
  "preferred_requirements": [
    "英語",
    "CS Ops経験"
  ],
  "ats_keywords": [
    "オンボーディング",
    "アップセル",
    "定着率改善"
  ]
}
```
