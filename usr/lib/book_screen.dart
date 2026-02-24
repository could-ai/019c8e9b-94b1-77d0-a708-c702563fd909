import 'package:flutter/material.dart';
import '../data/book_content.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0D8C8), // Darker background for the "table"
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600, maxHeight: 850),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 15,
                  offset: const Offset(5, 5),
                ),
                // Spine effect
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 2,
                  offset: const Offset(-2, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                // Book Header / Progress
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Page ${_currentPage + 1} of ${bookPages.length}",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Icon(Icons.auto_stories, color: Colors.grey[400], size: 20),
                    ],
                  ),
                ),
                
                // Book Content Area
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: bookPages.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return _buildPage(context, bookPages[index]);
                    },
                  ),
                ),

                // Navigation Controls
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (_currentPage > 0)
                        TextButton.icon(
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          icon: const Icon(Icons.arrow_back_ios, size: 16),
                          label: const Text("Previous"),
                        )
                      else
                        const SizedBox(width: 80), // Spacer

                      if (_currentPage < bookPages.length - 1)
                        TextButton.icon(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_ios, size: 16),
                          label: const Text("Next"),
                          style: TextButton.styleFrom(
                            iconAlignment: IconAlignment.end,
                          ),
                        )
                      else
                        const SizedBox(width: 80), // Spacer
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, BookContent content) {
    if (content.isCover) {
      return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.spa, size: 80, color: Color(0xFFD35400)),
            const SizedBox(height: 40),
            Text(
              content.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                height: 1.2,
                color: const Color(0xFF2C3E50),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              height: 2,
              width: 100,
              color: const Color(0xFFD35400),
            ),
            const SizedBox(height: 60),
            Text(
              content.body,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content.title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 24),
          Text(
            content.body,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 40),
          Center(
            child: Icon(
              Icons.lotus, // Decorative icon at bottom of page
              color: Colors.grey[300],
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
