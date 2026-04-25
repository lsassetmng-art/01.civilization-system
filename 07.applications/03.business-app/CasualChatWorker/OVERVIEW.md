# CasualChatWorker OVERVIEW

status: generated
phase: Phase A skeleton
app_name: CasualChatWorker
display_name: 雑談ワーカー
category: 03.business-app

## Purpose

CasualChatWorker is a short-time AI worker chat contract application.

Users select a Friend or Lover AI worker and make a time contract from 30 minutes to 2 hours.

## Core model

- Friend type: friendly smalltalk AI worker.
- Lover type: pseudo-romantic rental boyfriend / rental girlfriend style AI worker.
- Contract duration: 30 / 60 / 90 / 120 minutes.
- Price: 500 JPY per 30 minutes for all AI workers.
- Contract and usage truth: business schema.
- AI worker catalog and conversation control truth: aiworker schema.
- Smalltalk material provider: cx22073jw.
- Shared UI foundation: CommonOS / app_common.

## Responsibility boundary

business:
- contract
- price
- payment intent
- session
- usage log
- contract history
- safety event summary

aiworker:
- AI worker catalog
- Friend / Lover type classification
- conversation control
- safety boundary
- interaction style
- model-service assignment

cx22073jw:
- smalltalk knowledge
- topic material
- Friend-oriented smalltalk material
- Lover-oriented safe pseudo-romantic smalltalk material

app_common:
- UI token
- component variant
- presentation metadata
- sync presentation

## v1 scope

- AI worker listing
- Friend / Lover filtering
- AI worker profile
- contract duration selection
- pricing display
- contract confirmation
- contract creation
- chat session start
- remaining time display
- session end
- usage history
- safety redirect
- read-only CX material reference

## Non-v1

- external execution
- PG apply
- destructive action
- ERP sales posting
- long-term subscription
- unlimited chat
- adult sexual service
- real romantic relationship claim
- stalking, monitoring, threat, dependency induction
