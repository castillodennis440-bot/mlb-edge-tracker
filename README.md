# MLB Edge Tracker

Premium MLB prediction tracking app for displaying model-generated daily picks, settled results, ROI, win rate, profit/loss, market performance, confidence tiers, and model quality analytics.

This app is the user-facing dashboard for an MLB prediction system.

The MLB model and automation workflows are maintained separately in the model repo.

---

## Project Purpose

MLB Edge Tracker is the front-end analytics layer for an automated MLB prediction engine.

The app allows authenticated users to view:

- today’s model predictions
- pending picks
- settled results
- historical predictions
- win/loss outcomes
- ROI and profit/loss analytics
- model and market performance

Normal users do **not** create, edit, delete, or settle picks.

Predictions and results are controlled by backend/model workflows.

---

## Current Architecture

```text
mlb-prediction-engine
        ↓
GitHub Actions daily workflow
        ↓
Supabase predictions table
        ↓
MLB Edge Tracker app
        ↓
Authenticated users view daily picks


MLB games finish
        ↓
GitHub Actions settlement workflow
        ↓
Supabase results table + prediction status updates
        ↓
MLB Edge Tracker app updates results/analytics
