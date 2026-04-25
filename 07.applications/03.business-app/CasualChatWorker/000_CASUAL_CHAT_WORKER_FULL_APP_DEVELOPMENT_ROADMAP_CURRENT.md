# CasualChatWorker / 雑談ワーカー Full App Development Roadmap Current

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー
category: 03.business-app

## 0. App Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- design_root: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- implementation_root: ~/03.civilization-development/03.business-os/CasualChatWorker
- generic_rental_core: WorkerRentalCore
- DB owner schema: business
- AI worker canon: aiworker
- smalltalk material canon: cx22073jw
- UI/common presentation: CommonOS / app_common
- supported worker types: Friend / Lover
- min contract: 30 minutes
- max contract: 120 minutes
- allowed durations: 30 / 60 / 90 / 120 minutes
- price:
  - 30 minutes: 500 JPY
  - 60 minutes: 1,000 JPY
  - 90 minutes: 1,500 JPY
  - 120 minutes: 2,000 JPY
- monthly free ticket:
  - rule: shortest_contract_duration
  - quantity: 2
  - one ticket for CasualChatWorker: 30 minutes free
  - total monthly free: 60 minutes
  - carryover: false in v1

## 1. Whole-App Phase Roadmap

### Phase A: App Rule and Canon Freeze
Status: completed

### Phase B: Design Skeleton
Status: completed / incrementally updated

### Phase C: Pricing, Contract, and Free Ticket Design
Status: completed

### Phase D: WorkerRentalCore Generic DB Design
Status: completed

### Phase E: DB Apply and Verification
Status: applied / verification path created

### Phase F: Frontend Prototype
Status: completed

### Phase G: AIWorker Latest Alignment
Status: completed

### Phase H: CX22073JW Read-Only Smalltalk Material
Status: completed as mock/reference

### Phase I: API Payload Alignment
Status: completed

### Phase J: Backend Endpoint Skeleton
Status: completed

### Phase K: Backend Transaction Preparation
Status: completed

### Phase L: PostgreSQL Repository and HTTP Wiring
Status: completed

### Phase M: Secure Runtime and Real Mode Preparation
Status: completed as preparation

### Phase N: Non-Production Validation
Status: current / decision-required

Choices:
- A. Run non-production DB rollback dry-run.
- B. Do not run DB dry-run yet; hand off to another chat.
- C. Run live payload gap check against approved local/nonprod endpoint.

### Phase O: Real Mode Switch
Status: not started

Required:
- Phase N PASS
- Boss approval
- no frontend DB secrets
- payload gap PASS
- auth/session PASS
- 150-minute quote rejected
- Lover safety boundary retained

### Phase P: Final Acceptance
Status: pending

Required:
- final acceptance package
- final verification
- final cross-chat handoff
- remaining risk list

## 2. Current Position

Current position is Phase N.

Frontend real mode remains disabled.

Non-production rollback dry-run and live payload gap check are prepared but must not run automatically.

## 3. Safety Gates

### DB / Backend Gate

- PERSONA_DATABASE_URL only
- no DATABASE_URL
- no frontend DB secret
- no frontend psql
- rollback-only dry-run before live write tests
- 佐藤（DB担当）review for DB-sensitive changes

### Lover Safety Gate

- Lover remains pseudo-romantic entertainment
- not a real relationship
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- no personal data demand

### WorkerRentalCore Gate

- generic core remains app-independent
- CasualChatWorker-specific max remains 120 minutes
- prices remain app-specific
- monthly free ticket remains shortest_contract_duration rule

## 4. Next Decision

A. 非本番DB rollback dry-run を実行する  
B. DB dry-runせず別チャットへ引き継ぐ  
C. live payload gap check を実行する  

