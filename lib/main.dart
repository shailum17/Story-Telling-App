import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

defaultImage() => 'https://via.placeholder.com/150/CCCCCC/FFFFFF?text=Story';

void main() {
  runApp(StoryTellingApp());
}

class StoryTellingApp extends StatelessWidget {
  const StoryTellingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Story Telling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StoryListScreen(),
    );
  }
}

class StoryListScreen extends StatefulWidget {
  const StoryListScreen({super.key});

  @override
  _StoryListScreenState createState() => _StoryListScreenState();
}

class _StoryListScreenState extends State<StoryListScreen> {
  final List<String> storyTitles = [
    'TCinderella: A Classic Fairy Tale',
    'Snow White and the Seven Dwarfs',
    'Little Red Riding Hoods',
    'The Three Little Pigs',
    'Hansel and Gretel',
  ];

  final List<String> stories = [
    'Once upon a time, a kind-hearted young girl named Cinderella lived with her cruel stepmother and jealous stepsisters. After her father"s death, Cinderella was treated as a servant, forced to do all the housework while her stepsisters lived in luxury. One day, an invitation arrived for a grand ball at the palace. The prince was looking for a bride, and all the young women of the kingdom were invited. But her stepmother forbade Cinderella from attending, giving her endless chores.As her stepsisters left for the ball, Cinderella sat crying, wishing she could go. Suddenly, her Fairy Godmother appeared, using magic to transform Cinderella"s rags into a beautiful gown, complete with glass slippers. A pumpkin was turned into a carriage, mice into horses, and a rat into a coachman. She was warned that she must return by midnight when the magic would wear off. At the ball, Cinderella captivated everyone, especially the prince. They danced, and the prince fell in love with her. But at midnight, Cinderella had to flee, leaving behind one glass slipper. The prince set out to find the girl whose foot fit the slipper. When he arrived at Cinderella"s house, the slipper fit perfectly, and they were married. Cinderella forgave her stepsisters, and they lived happily ever after..',

    'Snow White, a princess with skin as white as snow, lips as red as roses, and hair as black as ebony, was the stepdaughter of a vain and evil queen. The queen"s magic mirror told her that Snow White was the fairest in the land, which made her incredibly jealous. She ordered a huntsman to take Snow White into the forest and kill her. However, the huntsman, unable to harm Snow White, let her go, and she found refuge in a cottage belonging to seven dwarfs. The queen discovered Snow White was still alive and tried to kill her three times—first with a poisoned apple, which put Snow White into a deep sleep. The dwarfs, heartbroken, placed her in a glass coffin. One day, a prince who had fallen in love with Snow White kissed her, breaking the curse. Snow White awoke, and they lived happily ever after, while the evil queen met her demise',

    'Little Red Riding Hood, a sweet young girl, was sent by her mother to visit her sick grandmother. She wore a red cloak with a hood, which gave her her name. Along the way, she met a wolf who tricked her into revealing where her grandmother"s house was. The wolf reached the house first, ate the grandmother, and disguised himself as her.When Little Red Riding Hood arrived, she noticed something strange about her grandmother"s appearance. After asking, “What big eyes you have!” and “What big teeth you have!” the wolf revealed himself and pounced. But just in time, a huntsman passed by, saved Little Red Riding Hood, and killed the wolf. Little Red Riding Hood and her grandmother were safe, and she learned to be more cautious in the future.',

    'Once upon a time, there were three little pigs who set out to build their homes. They each decided to build a house of their own, but each pig chose different materials for their construction. The first pig, eager to finish quickly, built his house out of straw. The second pig, wanting something sturdier, built his house out of sticks. The third pig, the wisest of them all, decided to build his house out of bricks, knowing that it would be much stronger.One day, a big bad wolf came along. He was hungry and wanted to eat the pigs, so he approached the first pig"s straw house. The wolf huffed and puffed and blew the straw house down. The first pig quickly ran to his brother"s stick house for safety. But the wolf followed, and with another powerful huff and puff, he blew down the stick house as well. The two pigs fled to their brother"s brick house.When the wolf arrived at the brick house, he huffed and puffed as hard as he could, but the house did not budge. Furious, the wolf tried again and again, but the brick house remained strong. The wolf then attempted to enter the house through the chimney, but the clever pigs had a pot of boiling water waiting at the bottom. When the wolf climbed down, he fell into the pot and was scalded. He ran away and never bothered the pigs again. The pigs learned a valuable lesson about hard work and planning. While their brothers took shortcuts, the third pig"s careful effort in building a sturdy house paid off. From then on, they all lived happily and safely in the brick house, knowing that careful preparation and effort lead to lasting success.',

    'SHansel and Gretel were siblings who lived in a small house with their poor father and cruel stepmother. When a terrible famine struck the land, the stepmother decided that the children were a burden and planned to abandon them in the woods. One night, the stepmother took the children into the forest and left them there, hoping they would be lost forever. Hansel, however, had overheard the plan and left a trail of white pebbles behind them to mark their way. The next day, they followed the trail of pebbles back home. But the stepmother was not discouraged and soon devised another plan to get rid of them. This time, she took the children deeper into the forest and left them there, this time without any pebbles to mark their way. Desperate, Hansel and Gretel wandered through the forest and came across a strange house made of candy and gingerbread. Hungry and tired, they began to eat the house, unaware that it belonged to a wicked witch. The witch trapped them in her home, intending to eat them. She locked Hansel in a cage and forced Gretel to do her bidding. However, Gretel was clever and managed to outsmart the witch. She tricked the witch into climbing into the oven, where she pushed her in and shut the door, burning the witch to death. After freeing Hansel, the children discovered the witch"s treasure and filled their pockets with jewels and gold. They made their way back to their father"s house, where they found the stepmother had died. Hansel and Gretel"s father, overjoyed to see them, welcomed them back with love. With their newfound wealth, the family was never poor again, and they all lived happily ever after.',

  ];

  final List<String> storyImages = [
  'assets/images/story1.jpg', 
  'assets/images/story2.jpg', 
  'assets/images/story3.jpg', 
  'assets/images/story4.jpg', 
  'assets/images/story5.jpg', 
];


  final List<bool> likedStories = [false, false, false, false, false];

  void addStory(String title, String content) {
    setState(() {
      storyTitles.add(title);
      stories.add(content);
      storyImages.add(defaultImage());
      likedStories.add(false);
    });
  }

  List<String> get favoriteStories => [
    for (int i = 0; i < likedStories.length; i++)
      if (likedStories[i]) storyTitles[i]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Story Library'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteStoriesScreen(
                      favoriteStories: favoriteStories,
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red),
                  const SizedBox(width: 5),
                  Text('Favorites (${favoriteStories.length})', style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.75,
            ),
            itemCount: storyTitles.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoryViewScreen(
                        title: storyTitles[index],
                        content: stories[index],
                        image: storyImages[index],
                        gradientColors: index % 2 == 0
                            ? [Colors.orangeAccent, Colors.deepOrangeAccent]
                            : [Colors.lightBlueAccent, Colors.blueAccent],
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
                          child: Image.network(
                            storyImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                storyTitles[index],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 4.0),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: IconButton(
                                  icon: Icon(
                                    likedStories[index] ? Icons.favorite : Icons.favorite_border,
                                    color: likedStories[index] ? Colors.red : Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      likedStories[index] = !likedStories[index];
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WriteStoryScreen(
                onSave: (title, content) => addStory(title, content),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StoryViewScreen extends StatefulWidget {
  final String title;
  final String content;
  final String image;
  final List<Color> gradientColors;

  const StoryViewScreen({super.key, 
    required this.title,
    required this.content,
    required this.image,
    required this.gradientColors,
  });

  @override
  _StoryViewScreenState createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  late FlutterTts flutterTts;
  bool isReading = false;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _readStory() async {
    if (isReading) {
      await flutterTts.stop();
      setState(() {
        isReading = false;
      });
    } else {
      await flutterTts.speak(widget.content);
      setState(() {
        isReading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.gradientColors.first.withOpacity(0.5),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(isReading ? Icons.pause : Icons.play_arrow),
            onPressed: _readStory,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(widget.image, height: 200, fit: BoxFit.cover),
              const SizedBox(height: 16.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    widget.content,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteStoriesScreen extends StatelessWidget {
  final List<String> favoriteStories;

  const FavoriteStoriesScreen({super.key, required this.favoriteStories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: const Text('Favorite Stories'),
      ),
      body: favoriteStories.isEmpty
          ? const Center(
        child: Text(
          'No favorites yet!',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      )
          : ListView.builder(
        itemCount: favoriteStories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteStories[index]),
          );
        },
      ),
    );
  }
}

class WriteStoryScreen extends StatefulWidget {
  final Function(String, String) onSave;

  const WriteStoryScreen({super.key, required this.onSave});

  @override
  _WriteStoryScreenState createState() => _WriteStoryScreenState();
}

class _WriteStoryScreenState extends State<WriteStoryScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: const Text('Write a Story'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Story Title'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _contentController,
              decoration: const InputDecoration(labelText: 'Story Content'),
              maxLines: 8,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final title = _titleController.text;
                final content = _contentController.text;
                if (title.isNotEmpty && content.isNotEmpty) {
                  widget.onSave(title, content);
                  Navigator.pop(context);
                }
              },
              child: const Text('Save Story'),
            ),
          ],
        ),
      ),
    );
  }
}
