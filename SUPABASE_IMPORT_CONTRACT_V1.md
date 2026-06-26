# Supabase Import Contract V1

This file defines how the MLB model workflow should write predictions, results, and model metadata into the MLB Edge Tracker Supabase database.

The tracking app is read-only for normal users. The MLB model/GitHub workflow is responsible for creating and updating prediction data.

---

## 1. Purpose

The app displays MLB predictions and analytics from Supabase.

The MLB model workflow should insert or update:

- daily predictions
- game data
- settlement results
- model run metadata
- model performance metrics

Normal users should only read this data through the app.

---

## 2. Security Model

### Frontend app

The frontend app uses:

- Supabase Project URL
- Supabase publishable/anon key

The frontend can only read data allowed by RLS policies.

### Model workflow / backend writer

The MLB model workflow should use:

- Supabase Project URL
- Supabase service role key

The service role key must be stored only in secure backend environments, such as:

- GitHub Actions Secrets
- Railway environment variables
- Render environment variables

The service role key must never be exposed in frontend code.

---

## 3. Main Tables

The current Supabase schema contains:

- `games`
- `predictions`
- `results`
- `model_runs`
- `model_metrics`
- `profiles`

---

## 4. Prediction Import Table

The main table for daily picks is:

```text
public.predictions
