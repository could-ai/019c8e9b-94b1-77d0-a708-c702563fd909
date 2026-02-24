class BookContent {
  final String title;
  final String body;
  final bool isCover;

  BookContent({
    required this.title,
    required this.body,
    this.isCover = false,
  });
}

final List<BookContent> bookPages = [
  // Cover Page
  BookContent(
    title: "RELEVANCE OF\nBUDDHIST PEACE MORALITY",
    body: "An Assignment on the Timeless Wisdom of Peace\n\n\nCreated for the Modern World",
    isCover: true,
  ),
  
  // Page 1
  BookContent(
    title: "Introduction",
    body: "In a world often torn by conflict, the relevance of Buddhist peace morality has never been more profound. \n\nBuddhism is not merely a religion but a philosophy of life that places 'Peace' (Santi) at its very core. It teaches that true peace is not just the absence of war, but a state of inner tranquility that radiates outward to society.",
  ),

  // Page 2
  BookContent(
    title: "The Core: Ahimsa (Non-Violence)",
    body: "At the heart of Buddhist morality lies 'Ahimsa'—the principle of non-violence. \n\nThis is not passivity, but an active restraint from harming any living being in thought, word, or deed. In modern contexts, Ahimsa challenges us to resolve conflicts through dialogue and understanding rather than aggression, offering a sustainable path to social harmony.",
  ),

  // Page 3
  BookContent(
    title: "Metta and Karuna",
    body: "Two pillars support this peace morality:\n\n1. Metta (Loving-Kindness): The sincere wish for the welfare and happiness of all beings, without discrimination.\n\n2. Karuna (Compassion): The quivering of the heart in response to the suffering of others, driving one to alleviate that pain.\n\nTogether, these virtues dissolve the barriers of 'us vs. them' that fuel human conflict.",
  ),

  // Page 4
  BookContent(
    title: "Inner Peace as the Foundation",
    body: "Buddhism posits a revolutionary idea: World peace begins with inner peace. \n\n'Natthi santi param sukham' — There is no happiness greater than peace.\n\nBy cultivating mindfulness and emotional regulation, individuals can break the cycle of anger and revenge. A peaceful society is simply a collection of peaceful individuals.",
  ),

  // Page 5
  BookContent(
    title: "Relevance in the Modern World",
    body: "Today, we face global challenges: nuclear threats, environmental degradation, and social polarization. \n\nBuddhist morality offers a 'Middle Way'—a balanced approach that encourages moderation, respect for nature, and ethical leadership. It reminds us that our survival depends on our ability to coexist compassionately.",
  ),

  // Page 6
  BookContent(
    title: "Conclusion",
    body: "The relevance of Buddhist peace morality is timeless. It provides a practical ethical framework for the 21st century.\n\nBy embracing non-violence, compassion, and mindfulness, we can transform not only our own lives but the destiny of humanity. The path to peace is not a destination, but a way of walking.",
  ),
];
