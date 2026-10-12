CREATE TABLE IF NOT EXISTS public.audit_log (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tbl text,
    op text,
    old_row jsonb,
    new_row jsonb,
    changed_by text DEFAULT current_user,
    at timestamptz DEFAULT now()
);