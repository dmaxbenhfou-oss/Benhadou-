class Category {
  final String name;
  final String description;

  Category({required this.name, required this.description});

  static List<Category> defaultCategories() {
    return [
      Category(name: 'الفئة 1', description: 'وصف الفئة 1'),
      Category(name: 'الفئة 2', description: 'وصف الفئة 2'),
      Category(name: 'الفئة 3', description: 'وصف الفئة 3'),
      // Add more categories as needed
    ];
  }
}