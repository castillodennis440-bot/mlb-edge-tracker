# APP DATA CONTRACT V1

This file defines the tracking app data structure after Step 3.

## Purpose
The app must be able to store detailed MLB model predictions, settle outcomes, and calculate analytics without depending on the model-building chat.

## Prediction Object
Each prediction should support:

- `id`
- `modelVersion`
- `createdAt`
- `date`
- `startTime`
- `awayTeam`
- `homeTeam`
- `game`
- `venue`
- `awayStarter`
- `homeStarter`
- `pick`
- `market`
- `lineValue`
- `odds`
- `fairProbability`
- `predictedProbability`
- `adjustedEdge`
- `ev`
- `stake`
- `confidenceTier`
- `confidence`
- `confidencePct`
- `reasoning`
- `status`
- `finalAwayRuns`
- `finalHomeRuns`
- `settledAt`

## Supported Status Values
- `pending`
- `win`
- `loss`
- `push`

## Supported Market Types
- `Moneyline`
- `Run Line`
- `Total`
- `F5 Winner`
- `F5 Handicap`

## Profit Rules With Decimal Odds
- Win: `stake * (decimalOdds - 1)`
- Loss: `-stake`
- Push: `0`
- Pending: `0`

## Analytics Rules
- ROI = total profit/loss divided by total staked units.
- Win rate excludes pushes and pending picks.
- Settled count includes win, loss, and push.
- Graded count includes only win and loss.

## Partial Data Rules
The app must tolerate missing values such as:

- `TBD` starters
- missing venue
- missing odds
- missing final scores
- skipped games
- incomplete model output

The UI should display graceful fallback text instead of breaking.

## Step 4 Manual Entry Rules
The local app can now create new prediction objects from the Settings / Integrations form.

Required fields:

- `pick`
- `odds` greater than `1.00`

Recommended fields:

- `game_date`
- `away_team`
- `home_team`
- `market_type`
- `stake`
- `predicted_probability`
- `fair_probability`
- `adjusted_edge`
- `ev`
- `confidence_tier`
- `reasoning`

Manual predictions are saved in browser local storage under the Step 3/4 local key `mlbEdgePicksV3` until the app is connected to Supabase.

## Step 5 Edit/Delete Rules
The local app can now edit and delete predictions.

Editable fields in the prototype:

- date
- start time
- away team
- home team
- pick / selection
- market
- line value
- decimal odds
- stake
- predicted probability
- fair probability
- adjusted edge
- EV
- confidence tier
- venue
- model version
- reasoning

Delete behavior:

- Deleting removes the prediction from local storage.
- Deleting also removes it from Slate, Settlement, History, Dashboard metrics, and Analytics.
- In the future Supabase version, deletes should likely be soft deletes using an `archived` or `deleted_at` field.

## Step 6+ Filter, Backup, and Cloud Prep Rules
The local app now includes the next major local prototype steps in one batch:

- Filter analytics by from date, to date, market, confidence tier, and status.
- History Explorer uses the same filters as Performance Analytics.
- Market split analytics respect the active filters.
- Profit curve respects active filters.
- Export all local predictions as JSON backup.
- Export all local predictions as CSV.
- Import a JSON backup.
- Reset the prototype to sample data.

A cloud database schema has been created in `supabase_schema_v1.sql` for later Supabase setup.
