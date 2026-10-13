REVOKE ALL ON public.audit_log FROM PUBLIC;
REVOKE ALL ON public.students FROM PUBLIC;
REVOKE ALL ON public.categories FROM PUBLIC;

GRANT SELECT ON public.students TO app_reader;
GRANT SELECT ON public.categories TO app_reader;
