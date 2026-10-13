INSERT INTO public.students (full_name, course)
VALUES
    ('Amina Hassan', 'Database Systems'),
    ('Peter Otieno', 'Software Development'),
    ('Grace Wanjiku', 'Data Analytics');

INSERT INTO public.categories (category_name)
VALUES ('Electronics');

INSERT INTO public.categories (category_name, parent_id)
SELECT 'Computers', category_id
FROM public.categories
WHERE category_name = 'Electronics';

INSERT INTO public.categories (category_name, parent_id)
SELECT 'Laptops', category_id
FROM public.categories
WHERE category_name = 'Computers';
