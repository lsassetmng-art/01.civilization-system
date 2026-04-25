# CasualChatWorker AIWorker Schema Responsibility Boundary

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Decision

The aiworker schema is the canonical owner of AI worker entities and behavior metadata.

CasualChatWorker must treat aiworker as read-only.

## 2. aiworker Owns

- AI worker entity
- AI worker model
- individual worker identity
- series
- Friend / Lover exposure eligibility
- personality
- individual style feature
- LoVerS style card
- series tendency
- conversation control
- safety boundary
- application service eligibility

## 3. CasualChatWorker Uses

CasualChatWorker uses aiworker read surfaces to display and select:

- worker name
- worker type
- series
- personality summary
- style tags
- strong safety notice flag
- allowed app/service availability

## 4. LoVerS / ビジネスヤンデレ

LoVerS style 12 ビジネスヤンデレ is a character/performance style.

Allowed:

- strong character flavor
- heavy joke flavor
- exclusive-feeling performance within safety boundary

Forbidden:

- real monitoring
- threats
- dependency induction
- action restriction
- sexual service conversion
- personal information demand
- location demand
- contact demand
- real relationship claim

## 5. business Does Not Own

business must not duplicate:

- AI worker personality canon
- series canon
- LoVerS style canon
- conversation control canon
- safety boundary canon

business may store only usage facts referencing aiworker ids.

