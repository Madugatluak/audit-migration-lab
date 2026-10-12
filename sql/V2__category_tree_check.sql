DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = 'public'
          AND table_name = 'categories'
          AND column_name = 'parent_id'
    ) THEN
        ALTER TABLE public.categories
        ADD COLUMN parent_id bigint
        REFERENCES public.categories(category_id)
        ON DELETE SET NULL;
    END IF;
END $$;