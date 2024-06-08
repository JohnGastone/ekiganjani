class ChatsModel {
  String? name;
  String? chatPlaceholder;
  String? chatTime;
  int? unreadCount;

  ChatsModel(this.name, this.chatPlaceholder, this.chatTime, this.unreadCount);
}

class ChatList {
  static List<ChatsModel> getChats = [
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
    ChatsModel("Kathleen Lugendo", "I just enrolled...", "10:00 PM", 2),
  ];

  static List<ChatsModel> displayChats = List.from(ChatList.getChats);
}
