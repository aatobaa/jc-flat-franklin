-- Run once in Supabase: SQL Editor → New query → paste → Run.
create table if not exists public.stops (
  id         bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  state      text not null check (char_length(state) between 2 and 40),
  city       text check (char_length(city) <= 60),
  who        text check (char_length(who) <= 40),
  arrived    date
);

alter table public.stops enable row level security;

-- Anyone with the page can see the trail and add a stop.
-- No one can edit or delete from the page; fix mistakes in the Table Editor.
create policy "read stops"  on public.stops for select to anon using (true);
create policy "add a stop"  on public.stops for insert to anon with check (true);
