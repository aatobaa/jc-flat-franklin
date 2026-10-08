// Supabase connection for the shared trail.
// The "anon" public key is meant to be visible in the browser; the table's
// row-level security rules below only allow reading and adding stops.
window.FF_CONFIG = {
  supabaseUrl: "",   // e.g. "https://abcd1234.supabase.co"
  supabaseKey: ""    // the project's anon / publishable key
};
