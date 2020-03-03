//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
  int _storyNumber = 0;

  final Map<int, List> storyPlan = {
    0: [2, 1],
    1: [2, 3],
    2: [5, 4],
    3: [0, 0],
    4: [0, 0],
    5: [0, 0],
  };

  void nextStory(int choiceNumber) {
    _storyNumber = storyPlan[_storyNumber][choiceNumber - 1];
//    if (_storyNumber == null) {
//      restart();
//    }
//    print('story number =$_storyNumber');
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVIsible() {
    if (_storyNumber < 3) {
      return true;
    } else {
      return false;
    }
  }

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  List<Story> _storyData = [
    Story(
        storyTitle:
            'あなたの車は、携帯電話の受信がない場所の真ん中の曲がりくねった道でタイヤがパンクしました。 あなたはヒッチハイクすることにしました。 さびたピックアップトラックは、あなたの隣に停車します。 魂のない目をした広いつばのある帽子をかぶった男が乗客のドアを開けて、「乗るかい？」".',
        choice1: '乗ります。助けてくれてありがとう！',
        choice2: '彼が最初に殺人者であるかどうか、尋ねる。'),
    Story(
        storyTitle: '彼はゆっくりとうなずき、質問に答えない',
        choice1: '少なくとも彼は正直だ。 乗ります',
        choice2: '待って、タイヤの交換方法を知っている。'),
    Story(
        storyTitle:
            '運転を始めると、彼が母親との関係について話し始めます。 彼はだんだんと怒り始めます。 彼はグローブボックスを開くように頼みます。 中には血まみれのナイフ、2本の切断された指、エルトン・ジョンのカセットテープがあります。 彼はグローブボックスに手を伸ばします。',
        choice1: 'エルトン・ジョンが大好き！ 彼にカセットテープを渡してください。',
        choice2: '彼か私！ あなたはナイフを持って彼を刺します。'),
    Story(
        storyTitle: '何？ そこに警官がいる！ 交通事故は、ほとんどの成人年齢層の事故死の2番目の主要原因であることをご存知ですか？',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'ガードレールを突き破り、下のギザギザの岩に注意を向けると、車を運転しているときに誰かを刺すという怪しげな知恵を思い浮かべます。',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            '「今夜、あなたは愛を感じることができますか」という節を残しながら、あなたは殺人者と結びつきます。 彼はあなたを次の町に降ろします。 あなたが行く前に、彼はあなたが遺体を捨てる良い場所を知っているかどうかあなたに尋ねます。 あなたは答えます：「桟橋を試してください」。',
        choice1: 'Restart',
        choice2: '')
  ];
}
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

//TODO: Step 23 - Use the _storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO: Step 25 - Change the _storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (_storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called _storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the _storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the _storyNumber is 0, the _storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the _storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the _storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if _storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
