import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> texts = [
    "Chess",
    "Volleyball",
    "Football",
    "Skating",
    "Tennis",
    "Archery",
    "Shooting",
    "Cycling",
    "Hockey",
    "Cricket",
    "Badminton",
    "Wrestling",
    "Carrom",
    "Basketball",
    "Swimming",
    "Table Tennis"
  ];

  List<String> content = [
    "The origin of chess remains a matter of controversy. There is no credible evidence that chess existed in a form approaching the modern game before the 6th century CE. Game pieces found in Russia, China, India, Central Asia, Pakistan, and elsewhere that have been determined to be older than that are now regarded as coming from earlier distantly related board games, often involving dice and sometimes using playing boards of 100 or more squares.One of those earlier games was a war game called chaturanga, a Sanskrit name for a battle formation mentioned in the Indian epic Mahabharata. Chaturanga was flourishing in northwestern India by the 7th century and is regarded as the earliest precursor of modern chess because it had two key features found in all later chess variants—different pieces had different powers (unlike checkers and go), and victory was based on one piece, the king of modern chess.",
    "Volleyball was invented in 1895 by William G. Morgan, physical director of the Young Mens Christian Association (YMCA) in Holyoke, Massachusetts. It was designed as an indoor sport for businessmen who found the new game of basketball too vigorous. Morgan called the sport “mintonette,” until a professor from Springfield College in Massachusetts noted the volleying nature of play and proposed the name of “volleyball.” The original rules were written by Morgan and printed in the first edition of the Official Handbook of the Athletic League of the Young Men’s Christian Associations of North America (1897). The game soon proved to have wide appeal for both sexes in schools, playgrounds, the armed forces, and other organizations in the United States, and it was subsequently introduced to other countries.In 1916 rules were issued jointly by the YMCA and the National Collegiate Athletic Association (NCAA). The first nationwide tournament in the United States was conducted by the National YMCA Physical Education Committee in New York City in 1922. The United States Volleyball Association (USVBA) was formed in 1928 and recognized as the rules-making, governing body in the United States. From 1928 the USVBA—now known as USA Volleyball (USAV)—has conducted annual national men’s and senior men’s (age 35 and older) volleyball championships, except during 1944 and 1945. Its women’s division was started in 1949, and a senior women’s division (age 30 and older) was added in 1977. Other national events in the United States are conducted by member groups of the USAV such as the YMCA and the NCAA.",
    "Modern football originated in Britain in the 19th century. Since before medieval times, “folk football” games had been played in towns and villages according to local customs and with a minimum of rules. Industrialization and urbanization, which reduced the amount of leisure time and space available to the working class, combined with a history of legal prohibitions against particularly violent and destructive forms of folk football to undermine the game’s status from the early 19th century onward. However, football was taken up as a winter game between residence houses at public (independent) schools such as Winchester, Charterhouse, and Eton. Each school had its own rules; some allowed limited handling of the ball and others did not. The variance in rules made it difficult for public schoolboys entering university to continue playing except with former schoolmates. As early as 1843 an attempt to standardize and codify the rules of play was made at the University of Cambridge, whose students joined most public schools in 1848 in adopting these “Cambridge rules,” which were further spread by Cambridge graduates who formed football clubs. In 1863 a series of meetings involving clubs from metropolitan London and surrounding counties produced the printed rules of football, which prohibited the carrying of the ball. Thus, the “handling” game of rugby remained outside the newly formed Football Association (FA). Indeed, by 1870 all handling of the ball except by the goalkeeper was prohibited by the FA.",
    "The invention of roller skates has been traditionally credited to a Belgian, Joseph Merlin, in the 1760s, although there are many reports of wheels attached to ice skates and shoes in the early years of that century. Early models were derived from the ice skate and typically had an “in-line” arrangement of wheels (the wheels formed a single straight line along the bottom of the skate). In 1819 M. Petibled of Paris received the first patent for a roller skate. Like previous models, Petibled’s skate had an in-line wheel arrangement, using three wooden or metal wheels. The wheels were connected to a wooden block that in turn could be strapped to a boot. These early roller skates enjoyed limited popularity. The ride was rough, and stopping and turning were nearly impossible.",
    "Tennis originally was known as lawn tennis, and formally still is in Britain, because it was played on grass courts by Victorian gentlemen and ladies. It is now played on a variety of surfaces. The origins of the game can be traced to a 12th–13th-century French handball game called jeu de paume (“game of the palm”), from which was derived a complex indoor racket-and-ball game: real tennis. This ancient game is still played to a limited degree and is usually called real tennis in Britain, court tennis in the United States, and royal tennis in Australia.The modern game of tennis is played by millions in clubs and on public courts. Its period of most rapid growth as both a participant and a spectator sport began in the late 1960s, when the major championships were opened to professionals as well as amateurs, and continued in the 1970s, when television broadcasts of the expanding professional tournament circuits and the rise of some notable players and rivalries broadened the appeal of the game.",
    "From prehistoric times, the bow was a principal weapon of war and of the hunt throughout the world, except in Australia. Recreational archery also was practiced, along with military, among the ancient Egyptians and Greeks, one instance of the latter being the competition in which Odysseus won the hand of Penelope. The Huns, Seljuq Turks, Mongols, and other nomadic horse archers dominated large parts of Asia for about 15 centuries from the 1st century CE. English longbowmen achieved glorious military victories in the Hundred Years’ War (1337–1453), while on continental Europe the crossbow became widely used, especially in Switzerland, parts of Germany, France, and the Low Countries. In Europe the bow and arrow were displaced by firearms as a military weapon in the 16th century. By the time the Spanish Armada attempted to invade England in 1588, an English county troop levy consisted of one-third bowmen to two-thirds soldiers with guns, and by century’s end the bow had been almost abandoned as a weapon.",
    "Shooting at a mark as a test of skill began with archery, long before the advent of firearms (c. 1300). Firearms were first used in warfare and later in sport shooting (hunting), and because of the shadowy early history of firearms, it is not known when target shooting began. The early history of the sport is largely that of shooting with rifles. The earliest recorded shooting match is one held in Eichstäat, Bavaria, in 1477; the shooters, probably using matchlocks, competed at 200 metres (220 yards).A Swiss painting from 1504 shows a rifle shooting setup that is quite modern. Contestants fire from enclosed and covered shooting booths at targets in the background. Each target is flanked by a small hut in which a target marker would be concealed during shooting and would later signal by a staff or pole to the shooter and the judges the value of the hit. The judges and scorekeepers are in the right foreground at a table under a roof. Several wind flags are flying, and spectators are shown.",
    "Cycling as a sport officially began on May 31, 1868, with a 1,200-metre (1,312-yard) race between the fountains and the entrance of Saint-Cloud Park (near Paris). The winner was James Moore, an 18-year-old expatriate Englishman from Paris. On November 7, 1869, the first city-to-city race was held between Paris and Rouen; again Moore was the winner, having covered the 135 km (84 miles) in 10 hours 25 minutes, including time spent walking his bicycle up the steeper hills. While road racing became common within a few years in continental Europe, in England the deteriorated conditions of the roads made them unsuitable, and therefore the sport there focused on the track or time trials.",
    "The history of hockey in India dates back to the rule of British regiments in India. Calcutta was the first city to organise a hockey club in 1885-86, followed by Bombay and Punjab. In 1908, the Bengal Hockey Association became India's first hockey association. As the game grew popular, organisations sprung up in places like Bombay, Bihar, Orissa, and Delhi. In the 1928 Olympic Games in Amsterdam, India won the gold medal in hockey for the first time. For the fifth time in a row, India has won the Olympic Hockey Championship. The Indian Hockey Federation gained a name and reputation due to India's first Olympic entry in hockey, which ended in triumph. The best Indian hockey players were Dhyan Chand, Allen, Norris, Pinniger, Yusuf Gateley, and Cullen. Women in India have also taken up hockey. The Asiad 82 has been expanded to include women's hockey. Their level of play is pretty high. A series of coaching camps have aided the athletes in reaching a noteworthy level of performance.",
    "Cricket is believed to have begun possibly as early as the 13th century as a game in which country boys bowled at a tree stump or at the hurdle gate into a sheep pen. This gate consisted of two uprights and a crossbar resting on the slotted tops; the crossbar was called a bail and the entire gate a wicket. The fact that the bail could be dislodged when the wicket was struck made this preferable to the stump, which name was later applied to the hurdle uprights. Early manuscripts differ about the size of the wicket, which acquired a third stump in the 1770s, but by 1706 the pitch—the area between the wickets—was 22 yards long. The ball, once presumably a stone, has remained much the same since the 17th century. Its modern weight of between 5.5 and 5.75 ounces (156 and 163 grams) was established in 1774.",
    "Badminton first appeared in the Olympic Games as a demonstration sport in 1972 and as an exhibition sport in 1988. At the 1992 Games it became a full-medal Olympic sport, with competition for men’s and women’s singles (one against one) and doubles (two against two). Mixed doubles was introduced at the 1996 Games. Competitive badminton is usually played indoors because even light winds affect the course of the shuttlecock. (Recreational badminton, on the other hand, is a popular outdoor summertime activity.) The rectangular court is 44 feet (13.4 metres) long and 17 feet (5.2 metres) wide for singles, 20 feet (6.1 metres) wide for doubles. A net 5 feet (1.5 metres) high stretches across the width of the court at its centre. A clear space of 4 feet (1.3 metres) around the court is needed. Play consists entirely of volleying—hitting the shuttlecock back and forth across the net without letting it touch the floor or ground within the boundaries of the court.",
    "Wrestling probably originated in hand-to-hand combat, and in particular as a sportive form of combat substituting the submission of a contestant for his death. Works of art from 3000 BCE depict belt wrestling in Babylonia and Egypt, and the Sumerian Gilgamesh epic has a description of such wrestling. Loose wrestling in India dates to before 1500 BCE. Chinese documents from 700 BCE describe loose wrestling, as do Japanese records from the 1st century BCE. The belt wrestling practiced locally in the 20th century by the Swiss, Icelanders, Japanese, and Cossacks differed little from that of the Egyptians in 2500 BCE.",
    "Carrom originates from the Indian subcontinent. Little is known about the game’s origins prior to the 19th century. There is a theory that Carrom was invented by the Indian Maharajas. The Maharajas are credited with creating polo, badminton and hockey so they may also be responsible for Carrom but there is no concrete proof. It is more likely that Carrom has been played in India for centuries but was never documented. An alternative theory is that Carrom originates from Portugal and became popular through their 19th century empire in India and Asia. Another theory puts the origins of Carrom much earlier because similar boards have been found in Ancient Egypt and there are references to a similar sounding game in ancient Greek literature.",
    "In the early years the number of players on a team varied according to the number in the class and the size of the playing area. In 1894 teams began to play with five on a side when the playing area was less than 1,800 square feet (167.2 square metres); the number rose to seven when the gymnasium measured from 1,800 to 3,600 square feet (334.5 square metres) and up to nine when the playing area exceeded that. In 1895 the number was occasionally set at five by mutual consent; the rules stipulated five players two years later, and this number has remained ever since. Since Naismith and five of his original players were Canadians, it is not surprising that Canada was the first country outside the United States to play the game. Basketball was introduced in France in 1893, in England in 1894, in Australia, China, and India soon thereafter, and in Japan in 1900.",
    "Archaeological and other evidence shows swimming to have been practiced as early as 2500 BCE in Egypt and thereafter in Assyrian, Greek, and Roman civilizations. In Greece and Rome swimming was a part of martial training and was, with the alphabet, also part of elementary education for males. In the Orient swimming dates back at least to the 1st century BCE, there being some evidence of swimming races then in Japan. By the 17th century an imperial edict had made the teaching of swimming compulsory in the schools. Organized swimming events were held in the 19th century before Japan was opened to the Western world. Among the preliterate maritime peoples of the Pacific, swimming was evidently learned by children about the time they walked, or even before. Among the ancient Greeks there is note of occasional races, and a famous boxer swam as part of his training. The Romans built swimming pools, distinct from their baths. In the 1st century BCE the Roman Gaius Maecenas is said to have built the first heated swimming pool.",
    "The game was invented in England in the early days of the 20th century and was originally called Ping-Pong, a trade name. The name table tennis was adopted in 1921–22 when the old Ping-Pong Association formed in 1902 was revived. The original association had broken up about 1905, though apparently the game continued to be played in parts of England outside London and by the 1920s was being played in many countries. Led by representatives of Germany, Hungary, and England, the Fédération Internationale de Tennis de Table (International Table Tennis Federation) was founded in 1926, the founding members being England, Sweden, Hungary, India, Denmark, Germany, Czechoslovakia, Austria, and Wales. By the mid-1990s more than 165 national associations were members."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: texts.length,
            itemBuilder: (context, index) {
              final item = texts[index];
              return Card(
                color: Colors.purple,
                elevation: 4,
                child: ExpansionTile(
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    title: Text(
                      "${texts[index]}",
                      style: const TextStyle(color: Colors.white),
                    ),
                    children: [
                      Text(content[index],
                          style: const TextStyle(color: Colors.white)),
                      // This button is used to remove this item
                    ]),
              );
            }));
  }
}
