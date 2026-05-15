export const AUTHOR_NAME = "Bruno Schmaiske Quoos";

export function getTodayLabel() {
  return new Intl.DateTimeFormat("pt-BR", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
  }).format(new Date());
}

export const TOPICS = [
  { route: "Carnaval", label: "Carnaval" },
  { route: "Festa Junina", label: "Festa Junina" },
  { route: "Halloween", label: "Halloween" },
];
