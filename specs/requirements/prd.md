# rlt1 — PRD

## Problem Statement

People juggling day-to-day tasks lose track of what they still need to do when their to-do list lives in scattered notes, chat threads, or memory. They need one simple, always-available place to jot a task down and check it off once it's done — without the overhead of organizing, editing, or categorizing entries.

## Solution

A minimal, sign-in-protected to-do app where each user keeps their own list of tasks: add a task, and mark it done when finished. Nothing else — no editing, no deleting, no updating. Every todo is stored in a database so it persists across sessions and devices.

## Actors

- **User** — a signed-in individual who creates their own todos and marks them done. Every user's todos are private to them; no user sees another user's list.

## User Stories

1. As a User, I want to sign in, so that my todos are kept private to me and saved across sessions.
2. As a User, I want to create a todo by entering its text, so that I can capture a task I need to do.
3. As a User, I want to see the list of my todos with their done/not-done status, so that I know what's still pending.
4. As a User, I want to mark one of my todos as done, so that I can track my progress and see it's complete.

## Product Decisions

- **Sign-in**: every user signs in via SSO through Thunder, the platform IDP (organization default).
- **Data storage**: todos are persisted in a database so they survive across sessions and devices.
- **Todo shape**: a todo has only its text and a done/not-done status — no due date, priority, category, or other metadata. *assumed*
- **No editing, updating, or deleting**: once created, a todo's text cannot be changed and it cannot be removed; its only state change is being marked done. This is explicit from the product brief.
- **No sharing or collaboration**: todos are strictly private per user; there is no shared or team list.
- **No external third-party services**: the product needs no payments, email, or other external integrations for this minimal scope.

## Out of Scope

- Editing or updating a todo's text.
- Deleting a todo.
- Un-marking a done todo (reopening it).
- Sharing, assigning, or collaborating on todos between users.
- Due dates, reminders, notifications, priorities, categories, or tags.
- An admin actor or any cross-user management capability.

## Open Questions

*(none — the brief and interview cover everything needed to design this system)*