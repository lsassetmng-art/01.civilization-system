# CasualChatWorker Persona DB Schema Responsibility Boundary

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Decision

CasualChatWorker / WorkerRentalCore DB work is executed on the Persona-side database.

Required connection environment variable:

- PERSONA_DATABASE_URL

Forbidden for this context:

- DATABASE_URL
- ERP-side DB apply
- ERP-side DB dry-run
- ERP-side direct linkage in v1

## 2. Persona-Side DB Schemas

Within this context, the following schemas exist on the Persona-side DB:

- business
- aiworker
- cx22073jw
- app_common

## 3. business Schema Responsibility

The business schema owns factual business events and usage facts.

For CasualChatWorker / WorkerRentalCore, business owns:

- rental contract
- rental contract line
- contract status
- rental period
- chat/rental session fact
- pricing catalog
- payment intent/status
- monthly free ticket grant
- monthly free ticket balance
- entitlement usage
- usage log
- session end summary
- safety event as business usage fact
- rental history

In short:

business owns:
- who rented which AI worker
- for how long
- at what price
- with how many free tickets
- under what contract status
- with what usage/payment history

## 4. aiworker Schema Responsibility

The aiworker schema owns the AI worker entity canon.

CasualChatWorker reads aiworker for:

- AI worker entity
- worker model / machine / individual
- series
- Friend / Lover availability
- personality
- individual style feature
- LoVerS style card
- ビジネスヤンデレ style metadata
- series tendency
  - initiative
  - user_influence
  - action_restriction
- conversation control
- safety boundary
- app availability / service eligibility
- read views for CasualChatWorker

In short:

aiworker owns:
- who the AI worker is
- what series it belongs to
- what personality/style it has
- how it is allowed to behave
- whether it can be exposed to this app

## 5. cx22073jw Schema Responsibility

The cx22073jw schema owns read-only conversation material.

CasualChatWorker reads cx22073jw for:

- smalltalk material
- topic material
- daily conversation material
- safe topic expansion
- Friend conversation material
- Lover conversation material
- seasonal / food / hobby / entertainment topics

cx22073jw does not own:

- contract
- pricing
- ticket balance
- payment
- AI worker entity canon
- actual chat contract state

## 6. app_common / CommonOS Responsibility

app_common / CommonOS owns presentation metadata and shared UI direction only.

It may provide:

- UI token
- component variant
- presentation metadata
- timer display candidate
- contract display candidate
- worker card display candidate
- safety notice presentation candidate

It must not own:

- contract truth
- pricing truth
- free ticket truth
- AI worker canon
- CX material truth
- DB secrets

## 7. CasualChatWorker Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- minimum contract: 30 minutes
- maximum contract: 120 minutes
- allowed durations: 30 / 60 / 90 / 120 minutes
- price:
  - 30 minutes: 500 JPY
  - 60 minutes: 1,000 JPY
  - 90 minutes: 1,500 JPY
  - 120 minutes: 2,000 JPY
- monthly free ticket:
  - source rule: shortest_contract_duration
  - quantity: 2
  - one ticket: 30 minutes free
  - total monthly free: 60 minutes
  - carryover: false in v1

## 8. Boundary Examples

### Example: User rents Lover worker for 90 minutes

- selected AI worker id: aiworker
- worker personality/style: aiworker
- LoVerS safety boundary: aiworker
- rental contract: business
- 90-minute duration: business
- 1,500 JPY base price: business
- two free tickets used: business
- final 500 JPY payable amount: business
- smalltalk topics: cx22073jw
- UI card/timer/notice presentation: CommonOS / app_common

## 9. STOP Conditions

Stop if any design or implementation does the following:

- uses DATABASE_URL for CasualChatWorker / WorkerRentalCore DB work
- treats ERP DB as the DB target
- stores AI worker entity canon in business
- stores CX topic material as business truth
- moves pricing/contract truth into CommonOS
- puts DB secrets in frontend
- weakens Lover safety boundary

