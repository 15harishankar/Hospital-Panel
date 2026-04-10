
CREATE TABLE public.appointments (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  patient_name TEXT NOT NULL,
  hospital TEXT NOT NULL,
  doctor TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'Pending',
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

ALTER TABLE public.appointments ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read" ON public.appointments FOR SELECT USING (true);
CREATE POLICY "Allow public insert" ON public.appointments FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public update" ON public.appointments FOR UPDATE USING (true);
CREATE POLICY "Allow public delete" ON public.appointments FOR DELETE USING (true);
