CREATE TABLE public.students (
    student_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name varchar(100) NOT NULL,
    course varchar(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE public.categories (
    category_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category_name varchar(100) NOT NULL,
    parent_id bigint REFERENCES public.categories(category_id)
        ON DELETE SET NULL
);

CREATE TABLE public.audit_log (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tbl text NOT NULL,
    op text NOT NULL,
    old_row jsonb,
    new_row jsonb,
    changed_by text NOT NULL DEFAULT current_user,
    at timestamptz NOT NULL DEFAULT now()
);
