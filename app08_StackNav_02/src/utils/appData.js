export const AUTHOR_NAME = "Bruno Schmaiske Quoos";

export function getTodayLabel() {
  return new Intl.DateTimeFormat("pt-BR", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
  }).format(new Date());
}

export const emperors = [
  {
    route: "Luffy",
    title: "Monkey D. Luffy",
    crew: "Piratas do Chapeu de Palha",
    objective: "Encontrar o One Piece e se tornar o Rei dos Piratas.",
    captainImage: require("../../assets/luffy.webp"),
    crewImage: require("../../assets/luffycrew.jpg.webp"),
    captainIntro:
      "Luffy e um capitão impulsivo, leal e muito determinado. Depois de comer a Gomu Gomu no Mi, seu corpo ganhou propriedades elastic as, e sua jornada passou a girar em torno da liberdade absoluta nos mares.",
    crewIntro:
      "Os Piratas do Chapeu de Palha sao conhecidos por sua uniao e por perseguirem sonhos individuais enquanto ajudam Luffy a seguir ate Laugh Tale.",
    mainMembers: ["Zoro", "Nami", "Sanji", "Usopp", "Robin", "Chopper", "Franky", "Brook", "Jinbe"],
    color: "#d62828",
  },
  {
    route: "Buggy",
    title: "Buggy, o Genio Palhaco",
    crew: "Cross Guild",
    objective: "Entrar na corrida pelo One Piece e transformar sua fama em poder real.",
    captainImage: require("../../assets/buggy.jpg.webp"),
    crewImage: require("../../assets/buggycrew.avif"),
    captainIntro:
      "Buggy mistura sorte absurda, carisma e caos. Mesmo quando parece estar fora de controle, ele consegue reunir seguidores e subir de status no mundo de One Piece.",
    crewIntro:
      "Na fase atual, Buggy esta ligado a Cross Guild, organizacao que ganhou relevancia ao colocar recompensas sobre fuzileiros e reunir nomes perigosos do submundo.",
    mainMembers: ["Mihawk", "Crocodile", "Alvida", "Cabaji", "Mohji", "Richie"],
    color: "#3178c6",
  },
  {
    route: "Shanks",
    title: "Shanks, o Ruivo",
    crew: "Piratas do Ruivo",
    objective: "Manter o equilibrio do mundo e agir apenas quando o momento realmente importa.",
    captainImage: require("../../assets/shanks.jpg"),
    crewImage: require("../../assets/shankscrew.webp"),
    captainIntro:
      "Shanks e um dos piratas mais respeitados do mundo. Seu dominio do Haki, sua presenca calma e seu senso de responsabilidade fazem dele uma figura central na historia.",
    crewIntro:
      "Os Piratas do Ruivo se destacam pela experiencia, equilibrio e altissimo nivel de combate. Mesmo sem muitas aparicoes, o grupo passa uma imagem de elite absoluta.",
    mainMembers: ["Benn Beckman", "Lucky Roux", "Yasopp", "Limejuice", "Bonk Punch", "Monster"],
    color: "#a4161a",
  },
  {
    route: "Barba Negra",
    title: "Marshall D. Teach",
    crew: "Piratas do Barba Negra",
    objective: "Dominar os mares acumulando poder, territorios e frutas do diabo raras.",
    captainImage: require("../../assets/blackbeard.jpeg"),
    crewImage: require("../../assets/blackbeardcrew.jpeg.webp"),
    captainIntro:
      "Teach e calculista, ambicioso e imprevisivel. Ele aproveita oportunidades como poucos e construiu seu imperio com traicoes, estrategia e sede de poder.",
    crewIntro:
      "A tripulacao do Barba Negra reune criminosos extremamente perigosos, muitos deles com habilidades devastadoras. E um grupo voltado para conquista e intimidacao.",
    mainMembers: ["Shiryu", "Van Augur", "Jesus Burgess", "Lafitte", "Doc Q", "Catarina Devon", "Kuzan"],
    color: "#3a0ca3",
  },
];
