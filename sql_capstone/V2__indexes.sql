CREATE INDEX idx_students_full_name
    ON public.students (full_name);

CREATE INDEX idx_categories_parent_id
    ON public.categories (parent_id);

CREATE INDEX idx_audit_log_tbl_at
    ON public.audit_log (tbl, at DESC);
