-- Protect sensitive audit history from ordinary application roles.
ALTER TABLE public.audit_log ENABLE ROW LEVEL SECURITY;

-- Remove the broad INSERT policy.
DROP POLICY IF EXISTS audit_log_insert_policy
ON public.audit_log;

-- Access remains governed by table privileges and RLS.
