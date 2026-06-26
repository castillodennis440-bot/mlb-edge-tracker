# Mobile Build Next Steps — MLB Edge Tracker

You are mobile-only, so use your phone as the control device while cloud tools do the work.

## What is already built in this chat

Local prototype file:

- `index.html`

Planning/data files:

- `TRACKING_APP_BLUEPRINT_V1.md`
- `APP_BUILD_HANDOFF_FULL.md`
- `APP_DATA_CONTRACT_V1.md`
- `supabase_schema_v1.sql`

## Completed App Features

- Premium futuristic dark UI
- Mobile-first app shell
- Dashboard
- Today’s Slate
- Results & Settlement
- Performance Analytics
- History Explorer
- Settings / Integrations
- Decimal odds
- Win/loss/push settlement
- Final score entry
- ROI, win rate, P/L, pending pick metrics
- Manual prediction entry
- Edit predictions
- Delete predictions
- Filters by date, market, confidence, and status
- Profit curve placeholder based on filtered settled picks
- Market split analytics
- JSON backup export
- CSV export
- JSON import
- Reset to sample data

## What still requires your real cloud accounts

These cannot be completed fully by the assistant alone because they require your login/accounts:

1. Create or open GitHub repository
2. Upload the app files
3. Open project in Replit
4. Create Supabase project
5. Run `supabase_schema_v1.sql`
6. Connect the app to Supabase
7. Deploy with Vercel
8. Later connect MLB workflow output to the app database

## Recommended Next Real-World Step

Create a GitHub repository for the app and upload:

- `index.html`
- `TRACKING_APP_BLUEPRINT_V1.md`
- `APP_DATA_CONTRACT_V1.md`
- `supabase_schema_v1.sql`

Suggested repo name:

`mlb-edge-tracker`

## Beginner-Friendly Phone Workflow

1. Open GitHub app or GitHub.com in Chrome desktop mode.
2. Create new repository named `mlb-edge-tracker`.
3. Upload the files from this workspace.
4. Open Replit on your phone.
5. Import the GitHub repository.
6. Run the app in Replit to test it.
7. Later deploy to Vercel.

## Cloud Database Later

When ready for Supabase:

1. Create a Supabase account.
2. Create a new project.
3. Open SQL Editor.
4. Paste the contents of `supabase_schema_v1.sql`.
5. Run it.
6. Then the app can be upgraded from local browser storage to permanent cloud storage.
