import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/category.dart';

List<Question> allQuestions = [
  // Sports
  Question(
      category: CategoryEnum.Sports,
      question: "The Olympics are held every 4 years.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "Golf was once an Olympic sport.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "The FIFA World Cup is held every 2 years.",
      answer: false),
  Question(
      category: CategoryEnum.Sports,
      question: "Michael Jordan played a total of 15 seasons in the NBA.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question:
          "The Tour de France has always been exclusively for male athletes.",
      answer: false),
  Question(
      category: CategoryEnum.Sports,
      question: "Tennis was originally played on grass courts.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "Muhammad Ali's birth name was Cassius Clay.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "There are 18 players on a baseball team.",
      answer: false),
  Question(
      category: CategoryEnum.Sports,
      question:
          "The marathon is an Olympic event that covers a distance of 42.195 kilometers.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "Pele scored over 1,000 career goals.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "Cricket is the national sport of India.",
      answer: false),
  Question(
      category: CategoryEnum.Sports,
      question: "Rugby World Cup is held every 5 years.",
      answer: false),
  Question(
      category: CategoryEnum.Sports,
      question: "Lionel Messi has won the FIFA World Cup.",
      answer: false),
  Question(
      category: CategoryEnum.Sports,
      question: "In basketball, Michael Jordan has won 6 NBA championships.",
      answer: true),
  Question(
      category: CategoryEnum.Sports,
      question: "The first modern Olympics were held in Athens, Greece.",
      answer: true),

  // Economics
  Question(
      category: CategoryEnum.Economics,
      question: "Inflation decreases the purchasing power of money.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question:
          "The law of demand states that as price decreases, demand increases.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question: "GDP stands for Gross Domestic Product.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question: "Fiat money is backed by physical commodities.",
      answer: false),
  Question(
      category: CategoryEnum.Economics,
      question:
          "Unemployment rate measures the percentage of the total workforce that is unemployed and actively seeking employment.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question:
          "Hyperinflation is an extremely high and typically accelerating inflation rate.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question: "A bear market signifies rising stock prices.",
      answer: false),
  Question(
      category: CategoryEnum.Economics,
      question:
          "Deflation is a decrease in the general price level of goods and services.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question:
          "Cryptocurrencies are considered legal tender in most countries.",
      answer: false),
  Question(
      category: CategoryEnum.Economics,
      question:
          "The World Bank is primarily concerned with providing loans to developing countries.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question: "The term 'bull market' refers to a market in decline.",
      answer: false),
  Question(
      category: CategoryEnum.Economics,
      question: "Monetary policy is conducted by a nation's central bank.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question:
          "The Bretton Woods Agreement pegged the exchange rate for currencies to gold.",
      answer: false),
  Question(
      category: CategoryEnum.Economics,
      question:
          "A trade deficit occurs when a country's imports exceed its exports.",
      answer: true),
  Question(
      category: CategoryEnum.Economics,
      question:
          "Fiscal policy is the use of government spending and taxation to influence the economy.",
      answer: true),

  // Architecture
  Question(
      category: CategoryEnum.Architecture,
      question:
          "Frank Lloyd Wright is considered the father of modern architecture.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "The Guggenheim Museum in Bilbao, Spain, was designed by Frank Gehry.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question: "The Leaning Tower of Pisa was originally designed to lean.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question: "Gothic architecture originated in the late 16th century.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "The Burj Khalifa is currently the tallest building in the world.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question: "The Parthenon is located in Rome, Italy.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question: "Art Deco architecture first appeared in France.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question: "The Sydney Opera House was designed by a Danish architect.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "Brutalism architecture features extensive use of glass and steel.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "The Empire State Building was the world's tallest building when it was completed.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question: "The architectural style of Baroque originated in Germany.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question: "Feng Shui is an ancient Chinese architectural philosophy.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "The Chrysler Building is an example of Art Nouveau architecture.",
      answer: false),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "The Hanging Gardens of Babylon are considered one of the Seven Wonders of the ancient world.",
      answer: true),
  Question(
      category: CategoryEnum.Architecture,
      question:
          "Buckminster Fuller is known for popularizing the geodesic dome.",
      answer: true),

  // Astronomy
  Question(
      category: CategoryEnum.Astronomy,
      question: "The Milky Way is a barred spiral galaxy.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question: "Mercury is the hottest planet in our solar system.",
      answer: false),
  Question(
      category: CategoryEnum.Astronomy,
      question: "Halley's Comet appears every 76 years.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question: "Jupiter has the most moons of any planet in our solar system.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question:
          "The Andromeda Galaxy is on a collision course with the Milky Way.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question:
          "A lunar eclipse occurs when the Earth is between the Sun and the Moon.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question:
          "Venus rotates in the opposite direction to most planets in our solar system.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question: "The Big Bang theory suggests the universe is contracting.",
      answer: false),
  Question(
      category: CategoryEnum.Astronomy,
      question:
          "The Hubble Space Telescope can observe objects in visible, ultraviolet, and infrared light.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question:
          "Neptune was the first planet to be discovered using mathematics.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question: "Black holes are not visible to telescopes that detect X-rays.",
      answer: false),
  Question(
      category: CategoryEnum.Astronomy,
      question: "The Sun contains 99.8% of the mass in our solar system.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question:
          "Mars is often called the Red Planet because of its reddish appearance.",
      answer: true),
  Question(
      category: CategoryEnum.Astronomy,
      question: "Pluto is classified as a planet.",
      answer: false),
  Question(
      category: CategoryEnum.Astronomy,
      question: "A supernova is the explosion of a star.",
      answer: true),

  // Chemistry
  Question(
      category: CategoryEnum.Chemistry,
      question: "Water (H2O) is a compound.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "The symbol for gold is Ag.",
      answer: false),
  Question(
      category: CategoryEnum.Chemistry,
      question: "Carbon dioxide is a greenhouse gas.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "Atoms are most stable when their outer shells are full.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "Helium is a reactive gas.",
      answer: false),
  Question(
      category: CategoryEnum.Chemistry,
      question: "pH measures the acidity or alkalinity of a solution.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "The periodic table was created by Dmitri Mendeleev.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question:
          "A catalyst speeds up a chemical reaction without being consumed.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "Diamond and graphite are allotropes of carbon.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "Isotopes of an element have different numbers of protons.",
      answer: false),
  Question(
      category: CategoryEnum.Chemistry,
      question: "The noble gases are highly reactive.",
      answer: false),
  Question(
      category: CategoryEnum.Chemistry,
      question:
          "The law of conservation of mass states that mass cannot be created or destroyed in a chemical reaction.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question: "Oxygen is the most abundant element in the Earth's crust.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question:
          "Hydrogen is the lightest and most abundant element in the universe.",
      answer: true),
  Question(
      category: CategoryEnum.Chemistry,
      question:
          "Chemical bonds involve the transfer or sharing of electrons between atoms.",
      answer: true),
];
