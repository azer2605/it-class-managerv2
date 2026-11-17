-- IT CLASS MANAGER: Supabase > SQL Editor > New query > Run
-- Ushbu skriptni qayta ishga tushirish ham xavfsiz: policy'lar avval o'chiriladi.

create table if not exists public.lessons (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid not null references auth.users(id) on delete cascade,
  title text not null,
  group_name text not null,
  lesson_date date not null,
  created_at timestamptz not null default now()
);

create table if not exists public.student_tasks (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid not null references public.lessons(id) on delete cascade,
  owner_id uuid not null references auth.users(id) on delete cascade,
  student_name text not null,
  section text not null check (section in ('Doska', 'Qog‘oz', 'Kompyuter')),
  task text not null default '',
  duration_minutes integer not null default 15 check (duration_minutes between 1 and 180),
  score integer null check (score between 1 and 5),
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.lessons enable row level security;
alter table public.student_tasks enable row level security;

drop policy if exists "Teachers manage own lessons" on public.lessons;
create policy "Teachers manage own lessons" on public.lessons
  for all to authenticated
  using (auth.uid() = owner_id)
  with check (auth.uid() = owner_id);

drop policy if exists "Teachers manage own student tasks" on public.student_tasks;
create policy "Teachers manage own student tasks" on public.student_tasks
  for all to authenticated
  using (auth.uid() = owner_id)
  with check (auth.uid() = owner_id);

create index if not exists lessons_owner_date_idx
  on public.lessons(owner_id, lesson_date desc, created_at desc);
create index if not exists student_tasks_lesson_idx
  on public.student_tasks(lesson_id, created_at);
create index if not exists student_tasks_owner_idx
  on public.student_tasks(owner_id, created_at desc);

grant usage on schema public to authenticated;
grant select, insert, update, delete on public.lessons to authenticated;
grant select, insert, update, delete on public.student_tasks to authenticated;
