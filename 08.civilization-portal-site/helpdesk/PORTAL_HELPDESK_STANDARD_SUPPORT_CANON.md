# Portal Helpdesk Standard Support Canon

## 1. Canonical decision

Helpdesk is a Portal-entry standard support surface.

Users access Helpdesk from the Portal site, not primarily from each individual app.

Portal site acts as the user-facing entry point and router for support.
CivilizationOS owns authentication, session authority, Civilization ID, and user language settings.
AIWorkerOS owns Helpdesk Knowledge DB, answer generation, troubleshooting logic, and escalation judgment.
Each app provides app-specific support knowledge as data.
CommonOS provides shared UI components.
CX22073JW provides reference and background knowledge only. It must not become the execution or support decision authority.

## 2. Main route

Portal site -> Helpdesk -> Select target app -> Ask question / search FAQ / inspect error -> AIWorkerOS generates support response -> User may return to target app.

When authentication is required:

Portal site -> CivilizationOS login/signup -> Portal Helpdesk -> App-context support -> Optional return to target app.

## 3. Responsibility boundaries

| Area | Responsibility |
|---|---|
| Portal site | Helpdesk entry, app selection, support top screen, routing context, return target |
| CivilizationOS | Authentication, Civilization ID, session, initial language, user locale |
| AIWorkerOS | Helpdesk Knowledge DB, answer generation, QA lookup, troubleshooting, escalation judgment |
| Each app | App-specific screen help, operation steps, FAQ, error knowledge, business rule support data |
| CommonOS | Shared Helpdesk UI components, cards, search UI, form UI, history UI, locale presentation |
| CX22073JW | Reference/background knowledge only |
| Guardrail Knowledge DB | Prohibited actions, dangerous actions, recurrence prevention, mistake patterns |

## 4. Non-goals

Portal Helpdesk must not:

- place the primary Helpdesk entry separately inside each app
- make Portal site the answer-generation authority
- make CommonOS the support decision authority
- make CX22073JW an agent or support decision authority
- duplicate each app business logic
- perform app operations without an authorized app route
- bypass CivilizationOS authentication/session authority
- bypass AIWorkerOS guardrail and escalation checks

## 5. Portal routes

Recommended routes:

- /helpdesk
- /helpdesk/apps
- /helpdesk/apps/:app_code
- /helpdesk/apps/:app_code/screens
- /helpdesk/apps/:app_code/flows
- /helpdesk/apps/:app_code/errors
- /helpdesk/ask
- /helpdesk/tickets
- /helpdesk/tickets/:ticket_id
- /helpdesk/history

## 6. Portal Helpdesk top screen

The Portal Helpdesk top screen should provide:

- search box
- supported app list
- recently used apps
- FAQ shortcuts
- error search
- inquiry/ticket entry
- support history
- language-aware labels
- login-required state
- return target indicator when launched with context

## 7. App context

Portal Helpdesk context may carry:

- app_code
- screen_code
- flow_code
- error_code
- return_to
- locale
- civilization_id
- support_session_id

Portal stores routing context and user-facing state.
AIWorkerOS performs support interpretation.

## 8. Multilingual rule

Portal Helpdesk labels must be locale-driven.

Example locale keys:

- helpdesk.title
- helpdesk.search.placeholder
- helpdesk.appList.title
- helpdesk.ticket.create
- helpdesk.errorSearch.title
- helpdesk.returnToApp

Browser language can be used as the default only before user preference exists.
After login, CivilizationOS user locale is authoritative.

## 9. App knowledge source rule

Each app does not host the primary Helpdesk UI.
Each app provides support knowledge data.

Required app support knowledge:

- app overview
- screen definitions
- operation flows
- FAQ
- error patterns
- business rule explanations
- escalation contacts or routing metadata
- known issues
- release notes when needed

The standard data contract is consumed by AIWorkerOS Helpdesk Knowledge DB.

## 10. Evidence and escalation

Portal Helpdesk may allow evidence attachment when permitted by AIWorkerOS policy and app support profile.

Escalation is required when:

- AIWorkerOS cannot answer safely
- destructive operation support is requested
- DB write, delete, external send, payment, or contract action is involved
- private data cannot be interpreted without authorized app context
- app-specific human/operator review is required
- policy or guardrail blocks an action
- repeated failed attempts occur

Portal displays escalation status.
AIWorkerOS decides escalation.

## 11. Completion criteria

Portal Helpdesk design is complete when:

- Portal is the primary Helpdesk entry
- app support is selectable from Portal
- CivilizationOS authentication/session boundary is defined
- AIWorkerOS Helpdesk Knowledge DB boundary is defined
- each app is a knowledge provider, not primary Helpdesk host
- CommonOS is UI component provider only
- CX22073JW is reference/background only
- Guardrail Knowledge DB boundary is not violated
- multilingual labels are assumed
- return-to-app routing is defined
- evidence/ticket/escalation route is defined
