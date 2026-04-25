# CasualChatWorker DB Boundary

status: draft
phase: Phase A skeleton

## Main schema

business

## Reference schemas

- aiworker
- cx22073jw
- app_common

## business candidates

- business.chat_worker_price_catalog
- business.chat_worker_contract
- business.chat_worker_contract_line
- business.chat_worker_session
- business.chat_worker_usage_log
- business.chat_worker_payment_intent
- business.chat_worker_contract_status_history
- business.chat_worker_safety_event
- business.chat_worker_session_end_summary

## aiworker read candidates

- Friend / Lover worker list
- conversation profile
- safety rule
- style overlay
- service assignment

## cx22073jw read candidates

- smalltalk knowledge
- topic material
- Friend smalltalk material
- Lover safe pseudo-romantic material

## DB rule

- business writes contract/session/usage only.
- aiworker is read-only from this app.
- cx22073jw is read-only from this app.
