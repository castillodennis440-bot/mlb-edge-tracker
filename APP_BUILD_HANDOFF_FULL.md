--- PAGE 1 ---
APP BUILD HANDOFF
Professional Reformatted Version

--- PAGE 2 ---
App Build Handoff - Full Context
Use this file as the context handoff for a **new chat focused only on the app build**.
---
1) Core objective
Build a **premium MLB prediction tracking app** that connects to an existing MLB
prediction/automation system.
The app should:
- show daily MLB model predictions
- track actual outcomes after games finish
- store prediction history
- calculate ROI / win rate / P&L / confidence-tier performance
- monitor model quality over time
- look ultra-modern and high-end
This app build should be handled separately from the model-debugging workflow.
---
2) User constraints
- User is **mobile-only**
- Device: **Redmi 14 Pro**
- User has **no coding experience**
- User needs **step-by-step guidance**
- Workflow should be **cloud-first**, not laptop-dependent
Recommended tool stack previously discussed:
- GitHub
- Replit
- Figma
- Supabase
- Vercel
- Railway
- Chrome in Desktop mode
- Optional: Acode
---
3) Existing model/project status
There is already an MLB project in GitHub with two major areas:
A. `mlb_automation/`
This is the **live automation shell**.

--- PAGE 3 ---
It currently handles:
- daily GitHub Actions workflow
- live odds source (currently Pinnacle via OddsPapi)
- daily report generation
- PDF creation
- PDF email delivery
B. `mlb_v4/`
This is the **model foundation**.
It currently handles:
- historical MLB data collection
- feature generation
- moneyline model training
- totals model training
- daily scoring output
---
4) Current live system summary
The live workflow has already been built and tested.
It currently:
1. pulls live MLB odds
2. builds a slate
3. integrates V4/V4.1 style predictions into reporting
4. generates a report
5. converts the report to PDF
6. emails the PDF
Important details:
- Betano integration via OddsPapi had access/permission issues
- Pinnacle is currently the working live bookmaker source
- Email delivery is working
- PDF attachment delivery is working
- GitHub artifacts still download as ZIPs (expected GitHub behavior)
---
5) Existing app blueprint file
A dedicated blueprint file already exists:
`TRACKING_APP_BLUEPRINT_V1.md`
This file contains the app concept, styling direction, page ideas, and architecture
suggestions.

--- PAGE 4 ---
---
6) App product vision
The tracking app should be:
- ultra-modern
- classy
- premium
- data-rich
- dark-first
- mobile-friendly
Design should feel more like:
- an analytics/trading dashboard
than:
- a gambling/casino interface
---
7) Design direction
Primary style
- dark mode first
- glass-style or soft-card layout
- elegant spacing
- modern charts
- premium typography
Colors
Use a blue / black / white palette.
Suggested direction from prior planning:
- Deep navy / midnight black base
- strong but tasteful electric blue accent
- white / soft white text
- muted gray-blue support tones
UI feel
- premium sports analytics product
- sharp, clean, high-standard look
- not noisy, not flashy
- polished for both mobile and desktop
---
8) Planned app sections

--- PAGE 5 ---
The app blueprint already defined the following major sections:
1. Dashboard
2. Today's Slate
3. Results & Settlement
4. Performance Analytics
5. Model Quality
6. History Explorer
7. Settings / Integrations
---
9) What the app must track
The app should store and display:
Predictions
- date
- game
- market type
- line / handicap / total
- odds
- fair probability
- predicted probability
- adjusted edge
- EV
- confidence tier
- reasoning
Outcomes
- final score
- win / loss / push
- settled result
- profit/loss
- ROI impact
Analytics
- hit rate
- ROI
- profit/loss curve
- by market performance
- by confidence tier performance
- by date range performance

--- PAGE 6 ---
- probability quality / calibration views later
---
10) Planned database structure
Previously discussed database entities include:
predictions
Suggested fields:
- id
- model_version
- created_at
- game_date
- start_time
- away_team
- home_team
- venue
- away_starter
- home_starter
- market_type
- selection
- line_value
- odds
- fair_probability
- predicted_probability
- adjusted_edge
- ev
- confidence_tier
- reasoning
- status
results
Suggested fields:
- id
- prediction_id
- final_away_runs
- final_home_runs
- result_status
- settled_at
- profit_loss_units

--- PAGE 7 ---
games
Suggested fields:
- id
- game_date
- away_team
- home_team
- start_time
- venue
- away_runs
- home_runs
- game_status
model_runs
Suggested fields:
- id
- model_version
- run_started_at
- run_finished_at
- games_processed
- predictions_generated
- success_flag
- error_log
model_metrics
Suggested fields:
- id
- model_version
- measured_at
- brier_score
- log_loss
- accuracy
- roi_7d
- roi_30d
- calibration_error
---
11) Recommended app tech stack
Best recommended stack from previous planning:

--- PAGE 8 ---
Frontend
- Next.js
- Tailwind CSS
- shadcn/ui
- Recharts or ECharts
Backend
- FastAPI
Database
- Supabase Postgres
Hosting
- Vercel for frontend
- Railway (or Render) for backend
Coding workflow (mobile-friendly)
- GitHub for storage
- Replit for coding and running
- Figma for design
---
12) Recommended build order for the app
This is the recommended order that was discussed:
Phase 1 - setup
- install apps / create accounts
- define app structure
- decide workflow
Phase 2 - design
- create visual system
- page layout
- color tokens
- mobile-first planning
Phase 3 - database
- predictions table
- results table
- metrics / analytics tables
Phase 4 - app shell

--- PAGE 9 ---
- navigation
- dashboard layout
- auth/admin basics if needed
Phase 5 - data integration
- load predictions into database
- load settled results
- connect screens
Phase 6 - deployment
- publish frontend
- connect backend
- connect workflows
---
13) Existing mobile-only setup advice
Because the user is mobile-only and new to coding, prior guidance recommended:
Install / use:
- GitHub app
- Replit
- Figma
- Acode (optional)
- Chrome in Desktop mode
Create accounts for:
- Replit
- Supabase
- Vercel
- Railway
Workflow principle:
Use the phone as the **control device**, while cloud services do the heavy lifting.
---
14) Model context that matters for the app
The app should assume the prediction system currently supports / aims to support:
- full game moneyline
- handicap / run line
- first 5 innings winner
- first 5 innings handicap

--- PAGE 10 ---
- totals / over-under
It should also expect daily prediction objects to eventually include:
- probability
- confidence tier
- edge
- EV
- score projection
---
15) Existing project limitations to keep in mind
These are useful for the app designer/developer to know:
- current live source is Pinnacle, not Betano
- Betano access via OddsPapi had issues
- some model components are still placeholders / partial
- some starter data may be missing (`TBD`)
- some reports may include skipped games due to rate limits or matching issues
- the app should be able to handle partial data gracefully
---
16) Existing project files that may matter later
These existing workspace files are relevant references:
App planning
- `TRACKING_APP_BLUEPRINT_V1.md`
- `APP_BUILD_HANDOFF_FULL.md` (this file)
Live automation
- `mlb_automation/run_daily.py`
- `mlb_automation/build_live_slate.py`
- `mlb_automation/merge_v41_into_live_slate.py`
- `mlb_automation/report_to_pdf.py`
- `mlb_automation/send_email.py`
- `.github/workflows/mlb_daily.yml`
Model foundation
- `mlb_v4/README.md`
- `mlb_v4/DATA_SCHEMA.md`
- `mlb_v4/config.py`
- `mlb_v4/historical_collector.py`
- `mlb_v4/feature_builder.py`

--- PAGE 11 ---
- `mlb_v4/train_moneyline.py`
- `mlb_v4/train_totals.py`
- `mlb_v4/score_today.py`
- `.github/workflows/mlb_v4.yml`
---
17) Immediate recommended next step for a new app-only chat
The next chat should focus only on the app and start with:
1. confirm mobile-only workflow
2. define app stack
3. create the app database schema
4. plan the frontend screens
5. begin app shell setup
The app chat should **not** spend time debugging the MLB model unless the app depends on a
specific data contract.
---
18) Suggested prompt for the new chat
You can paste this into the new app chat:
```text
I want to continue only the app build in this chat.
Use this context file as the main handoff:
APP_BUILD_HANDOFF_FULL.md
Important facts:
- I am mobile-only
- I do not know coding
- Guide me step by step
- The MLB model and workflows already exist in another chat/project
- This chat should focus only on building the premium tracking app
- Style must be ultra-modern, classy, dark-first, with blue/black/white colors
- We already have a file called TRACKING_APP_BLUEPRINT_V1.md that contains the app
blueprint
Start with the best first step for building the app from my phone.
```
---
19) Summary in one line
The app should become the premium front-end and analytics layer for an existing MLB prediction
engine that already has a live automation shell and a separate trained-model foundation.