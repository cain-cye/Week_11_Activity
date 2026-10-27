class Whiteboard {
  String color;
  String dimensions;
  String _currentContent;

  Whiteboard({
    required this.color,
    required this.dimensions,
    String initialContent = "Empty",
  }) : _currentContent = initialContent;

  String get currentContent => _currentContent;

  void displayText() {
    print("[$color Whiteboard ($dimensions)] Board Content: '$_currentContent'");
  }

  void writeText(String text) {
    _currentContent = text;
    print("Written on $color board: '$text'");
  }

  void eraseContent() {
    _currentContent = "Empty";
    print("The $color board has been erased.");
  }

  Future<String> saveToCloud() async {
    print("[ASYNC START] Saving board content '$_currentContent' to cloud storage...");
    await Future.delayed(Duration(seconds: 2));
    return "[ASYNC COMPLETE] Cloud Backup Successful: Content '$_currentContent' is saved!";
  }
}

void main() async {
  Whiteboard mathBoard = Whiteboard(
    color: "White",
    dimensions: "4x8 feet",
    initialContent: "Flutter Widget Lifecycle Notes",
  );

  Whiteboard physicsBoard = Whiteboard(
    color: "Green",
    dimensions: "3x5 feet",
    initialContent: "Project Brainstorming & Wireframes",
  );

  List<Whiteboard> classroomBoards = [mathBoard, physicsBoard];

  print("Initial State of Classroom Boards");
  for (var board in classroomBoards) {
    board.displayText();
  }

  print("\nModifying Board Contents");
  mathBoard.writeText("Milestone 2 Submission Deadline: Week 12");
  physicsBoard.eraseContent();

  print("\nTesting Asynchronous Cloud Save");
  print("[SYSTEM] Initiating async save operation...");

  Future<String> saveFuture = mathBoard.saveToCloud();

  print("[SYSTEM] Program continues executing other tasks while saving in background...");
  physicsBoard.displayText();

  String resultMessage = await saveFuture;
  print(resultMessage);

  print("\nFinal State of Classroom Boards");
  for (var board in classroomBoards) {
    board.displayText();
  }
}
