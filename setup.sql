-- Play Time: run once in Supabase → SQL Editor → New query → Run.
create table if not exists public.rounds (
  game text not null,
  id text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (game, id)
);

alter table public.rounds enable row level security;

-- The app has no logins, so the public key may read and write rounds (and nothing else).
create policy "play time read"   on public.rounds for select to anon using (true);
create policy "play time insert" on public.rounds for insert to anon with check (true);
create policy "play time update" on public.rounds for update to anon using (true) with check (true);
