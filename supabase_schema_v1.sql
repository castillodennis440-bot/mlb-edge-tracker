-- MLB Edge Tracker — Supabase Schema V1
-- This is for later Supabase cloud storage.

create table if not exists public.games (
  id uuid primary key default gen_random_uuid(),
  game_date date not null,
  away_team text not null,
  home_team text not null,
  start_time timestamptz,
  venue text,
  away_runs integer,
  home_runs integer,
  game_status text default 'scheduled',
  created_at timestamptz default now()
);

create table if not exists public.model_runs (
  id uuid primary key default gen_random_uuid(),
  model_version text not null,
  run_started_at timestamptz,
  run_finished_at timestamptz,
  games_processed integer default 0,
  predictions_generated integer default 0,
  success_flag boolean default true,
  error_log text,
  created_at timestamptz default now()
);

create table if not exists public.predictions (
  id uuid primary key default gen_random_uuid(),
  model_run_id uuid references public.model_runs(id) on delete set null,
  game_id uuid references public.games(id) on delete set null,
  model_version text,
  created_at timestamptz default now(),
  game_date date not null,
  start_time timestamptz,
  away_team text,
  home_team text,
  venue text,
  away_starter text,
  home_starter text,
  market_type text not null,
  selection text not null,
  line_value numeric,
  odds_decimal numeric not null,
  fair_probability numeric,
  predicted_probability numeric,
  adjusted_edge numeric,
  ev numeric,
  stake_units numeric default 1,
  confidence_tier text,
  reasoning text,
  status text default 'pending',
  archived boolean default false,
  deleted_at timestamptz
);

create table if not exists public.results (
  id uuid primary key default gen_random_uuid(),
  prediction_id uuid not null references public.predictions(id) on delete cascade,
  final_away_runs integer,
  final_home_runs integer,
  result_status text not null,
  settled_at timestamptz default now(),
  profit_loss_units numeric default 0,
  roi_impact numeric
);

create table if not exists public.model_metrics (
  id uuid primary key default gen_random_uuid(),
  model_version text not null,
  measured_at timestamptz default now(),
  brier_score numeric,
  log_loss numeric,
  accuracy numeric,
  roi_7d numeric,
  roi_30d numeric,
  calibration_error numeric
);
