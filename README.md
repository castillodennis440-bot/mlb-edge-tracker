# MLB Edge Tracker

Premium MLB prediction tracking app for monitoring model picks, results, ROI, win rate, profit/loss, confidence tiers, market performance, and model quality.

## Project Purpose

This app is the front-end tracking and analytics layer for an MLB prediction system.

The model and automation workflows are handled separately. This repo focuses only on the app.

## Current Features

- Premium futuristic dark UI
- Mobile-first layout
- Dashboard
- Today’s Slate
- Results & Settlement
- Performance Analytics
- History Explorer
- Settings / Integrations
- Decimal odds format
- Manual prediction entry
- Edit and delete predictions
- Win/loss/push settlement
- Final score tracking
- ROI calculation
- Win rate calculation
- Profit/loss tracking
- Market split analytics
- Confidence-tier support
- History and analytics filters
- JSON backup export
- CSV export
- JSON import
- Sample data reset

## Current Storage

The current prototype stores data in browser local storage.

This is temporary.

Future version will use Supabase Postgres for permanent cloud storage.

## Planned Cloud Stack

- GitHub
- Replit
- Supabase
- Vercel
- Railway or Render later if backend is needed

## Planned Database Tables

See:

`supabase_schema_v1.sql`

Planned entities:

- games
- predictions
- results
- model_runs
- model_metrics

## Design Direction

The app should feel like a high-end analytics/trading dashboard.

Style:

- Dark-first
- Blue / black / white
- Premium
- Futuristic
- Glass cards
- Clean mobile UX
- Not casino-like

## Next Milestones

1. Connect app to Supabase
2. Replace local storage with cloud database
3. Deploy public app with Vercel or Replit Deployments
4. Add authentication if needed
5. Connect daily MLB prediction workflow outputs
6. Add model quality charts and calibration analytics

## Important Note

The MLB model is maintained separately.

This repository is only for the tracking app.
