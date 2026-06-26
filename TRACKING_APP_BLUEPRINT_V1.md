# TRACKING_APP_BLUEPRINT_V1

## Project Context
- This app tracks an MLB prediction system being built and maintained separately.
- This chat focuses only on the tracking app.
- The app should eventually connect to the existing MLB workflows.

## Product Vision
Build a mobile-friendly, cloud-first tracking dashboard for MLB predictions, results, analytics, ROI, win rate, profit/loss, confidence tiers, market performance, and model quality over time.

## Style Direction
- Ultra-modern, classy, premium, dark-first.
- Main colors: blue, black, white.
- High-end analytics / trading dashboard feel.
- Avoid casino-like visuals.
- Dark glass cards.
- Soft blue highlights.
- Clean, modern layout.
- Mobile-first.

## App Goals
- Show today’s MLB model predictions.
- Track actual outcomes of each day’s predictions.
- Store historical predictions.
- Track ROI, win rate, profit/loss, confidence tiers, and market performance.
- Show model quality and analytics over time.
- Eventually connect to MLB workflows from the separate model chat.

## Planned Sections
1. Dashboard
2. Today’s Slate
3. Results & Settlement
4. Performance Analytics
5. Model Quality
6. History Explorer
7. Settings / Integrations

## Technical Direction
- User is mobile-only.
- User does not know coding.
- Guidance must be step-by-step and beginner-friendly.
- Prefer a cloud-first workflow.
- Recommended stack:
  - GitHub
  - Replit
  - Figma
  - Supabase
  - Vercel
  - Railway

## Build Approach
Start with a mobile-first visual prototype, then turn it into a real cloud app in stages.

### Phase 1 — App Shell
- Create dark premium mobile dashboard prototype.
- Include navigation for all major sections.
- Use sample MLB prediction data.
- Validate look and structure before adding database/backend.

### Phase 2 — Local Tracking MVP
- Add prediction entry/editing.
- Add outcome settlement.
- Calculate win rate, ROI, profit/loss, confidence-tier performance.
- Store data locally for testing.

### Phase 3 — Cloud Database
- Connect Supabase.
- Store predictions, results, markets, model versions, and daily metrics.

### Phase 4 — Deployment
- Deploy app to Vercel or Replit.
- Make it accessible from phone browser.

### Phase 5 — Integrations
- Connect to MLB workflow outputs.
- Import today’s predictions automatically.
- Add scheduled refresh if needed.


## Handoff Addendum — Professional Context PDF

The file `APP_BUILD_HANDOFF_Professional-1.pdf` was read and digested on 2026-06-26. Key additions to the app build plan:

### Confirmed User Constraints
- Mobile-only workflow, specifically phone-first.
- User has no coding experience.
- Guidance must stay step-by-step and beginner-friendly.
- Cloud services should do the heavy lifting.

### Confirmed Product Direction
- Premium MLB prediction tracking app, separate from MLB model debugging.
- Should feel like an analytics/trading dashboard, not a betting/casino interface.
- Dark-first, blue/black/white, glass cards, premium typography, modern charts.

### Required Tracking Fields
Predictions should support: date, game, market type, line/handicap/total, odds, fair probability, predicted probability, adjusted edge, EV, confidence tier, reasoning, status, model version, teams, starters, venue, and start time.

Outcomes should support: final score, win/loss/push, settled result, profit/loss, ROI impact, and settled timestamp.

Analytics should support: hit rate, ROI, profit/loss curve, market performance, confidence-tier performance, date-range performance, and later probability calibration/model-quality views.

### Planned Database Entities
- `predictions`
- `results`
- `games`
- `model_runs`
- `model_metrics`

### Relevant Markets
The app should be ready for full-game moneyline, handicap/run line, first 5 innings winner, first 5 innings handicap, and totals/over-under.

### Integration Notes
- Current live odds source is Pinnacle via OddsPapi.
- Betano access had issues.
- App must handle missing or partial data gracefully, including `TBD` values and skipped games.

### Recommended Stack
- Frontend: Next.js, Tailwind CSS, shadcn/ui, Recharts or ECharts.
- Backend: FastAPI.
- Database: Supabase Postgres.
- Hosting: Vercel frontend, Railway or Render backend.
- Mobile workflow: GitHub, Replit, Figma, Chrome Desktop Mode, optional Acode.
