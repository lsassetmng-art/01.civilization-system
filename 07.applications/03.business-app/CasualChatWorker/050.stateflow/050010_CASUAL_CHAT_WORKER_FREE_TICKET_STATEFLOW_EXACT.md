# CASUAL CHAT WORKER FREE TICKET STATEFLOW EXACT

status: stateflow-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Stateflow

1. User opens AI worker detail.
2. User selects duration.
3. App fetches free ticket balance.
4. App calculates base price.
5. App calculates max applicable ticket count.
6. User chooses whether to apply tickets.
7. App shows final quote.
8. User confirms contract.
9. App reserves or consumes free tickets.
10. App creates contract and session.
11. Chat starts.
12. Session ends.
13. Usage log and ticket usage history are finalized.

## 2. Ticket Application Matrix

| duration | max_ticket_count | free_minutes | paid_minutes_if_max_applied |
|---:|---:|---:|---:|
| 30 | 1 | 30 | 0 |
| 60 | 2 | 60 | 0 |
| 90 | 2 | 60 | 30 |
| 120 | 2 | 60 | 60 |

## 3. Failure Recovery

| failure | recovery |
|---|---|
| quote mismatch | 契約確定を止め、再見積もり |
| ticket insufficient | 利用可能枚数へ自動補正し確認画面へ戻す |
| ticket reserve failed | 契約を作成しない |
| payment failed after ticket reserve | ticket usage を reverted に戻す |
| session start failed | contract / ticket usage を pending_review にする |

