class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredients> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe(
      'SQUARE COPPER BUSBAR',
      'assets/square-copper-busbas.png',
      1,
      [
        Ingredients(
          1,
          'm²',
          'Luas',
        ),
        Ingredients(
          400,
          'gr',
          'Berat',
        ),
      ],
    ),
    Recipe(
      'GROUNDING ROD',
      'assets/grounding-rod.png',
      1,
      [
        Ingredients(
          1,
          'm',
          'Panjang',
        ),
        Ingredients(
          300,
          'gr',
          'Berat',
        ),
      ],
    ),
    Recipe(
      'BARE COPPER CONDUCTOR',
      'assets/bare-copper-conductor.png',
      1,
      [
        Ingredients(
          1,
          'm³',
          'Volume',
        ),
        Ingredients(
          600,
          'gr',
          'Berat',
        ),
      ],
    ),
    Recipe(
      'BARE COPPER WIRE',
      'assets/bare-copper-wire.png',
      1,
      [
        Ingredients(
          1,
          'm',
          'Panjang',
        ),
        Ingredients(
          150,
          'gr',
          'Berat',
        ),
      ],
    ),
    Recipe(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingredients(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredients(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredients(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
      2,
      [
        Ingredients(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
      1,
      [
        Ingredients(
          2,
          'slices',
          'Cheese',
        ),
        Ingredients(
          2,
          'slices',
          'Bread',
        ),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
      24,
      [
        Ingredients(
          4,
          'cups',
          'flour',
        ),
        Ingredients(
          2,
          'cups',
          'sugar',
        ),
        Ingredients(
          0.5,
          'cups',
          'chocolate chips',
        ),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
      1,
      [
        Ingredients(
          4,
          'oz',
          'nachos',
        ),
        Ingredients(
          3,
          'oz',
          'taco meat',
        ),
        Ingredients(
          0.5,
          'cup',
          'cheese',
        ),
        Ingredients(
          0.25,
          'cup',
          'chopped tomatoes',
        ),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
      4,
      [
        Ingredients(
          1,
          'item',
          'pizza',
        ),
        Ingredients(
          1,
          'cup',
          'pineapple',
        ),
        Ingredients(
          8,
          'oz',
          'ham',
        ),
      ],
    ),
  ];
}

class Ingredients {
  double quantity;
  String measure;
  String name;
  Ingredients(
    this.quantity,
    this.measure,
    this.name,
  );
}
