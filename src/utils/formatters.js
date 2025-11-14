// utils/formatters.js (un nuevo archivo de utilidades)
export function formatDisplayDate(dateString) {
  if (!dateString) return "";
  // El formato de entrada es 'YYYY-MM-DD'
  const date = new Date(dateString + 'T00:00:00'); // Evita problemas de zona horaria
  if (isNaN(date.getTime())) return "";

  const day = String(date.getDate()).padStart(2, '0');
  const month = String(date.getMonth() + 1).padStart(2, '0');
  const year = date.getFullYear();
  return `${day}/${month}/${year}`;
}
// utils/formatters.js (continuación)
export function formatCurrency(value) {
  if (isNaN(value) || value === null || value === undefined || value === 0) {
    return ""; // O '$0.00' si lo prefieres
  }
  return new Intl.NumberFormat("es-MX", {
    style: "currency",
    currency: "MXN",
  }).format(value);
}

