class Cable {
  String label;
  String imageUrl;
  int servings;
  List<Materials> materials;

  Cable(
    this.label,
    this.imageUrl,
    this.servings,
    this.materials,
  );

  static List<Cable> samples = [
    Cable(
      'SQUARE COPPER BUSBAR',
      'assets/square-copper-busbas.png',
      1,
      [
        Materials(
          1,
          'm²',
          'Luas',
        ),
        Materials(
          400,
          'gr',
          'Berat',
        ),
      ],
    ),
    Cable(
      'GROUNDING ROD',
      'assets/grounding-rod.png',
      1,
      [
        Materials(
          1,
          'm',
          'Panjang',
        ),
        Materials(
          300,
          'gr',
          'Berat',
        ),
      ],
    ),
    Cable(
      'BARE COPPER CONDUCTOR',
      'assets/bare-copper-conductor.png',
      1,
      [
        Materials(
          1,
          'm³',
          'Volume',
        ),
        Materials(
          600,
          'gr',
          'Berat',
        ),
      ],
    ),
    Cable(
      'BARE COPPER WIRE',
      'assets/bare-copper-wire.png',
      1,
      [
        Materials(
          1,
          'm',
          'Panjang',
        ),
        Materials(
          150,
          'gr',
          'Berat',
        ),
      ],
    ),
    Cable(
      'COPPER ROD',
      'assets/copper-rod.png',
      1,
      [
        Materials(
          27,
          'm³',
          'Volume',
        ),
        Materials(
          1000,
          'gr',
          'Berat',
        ),
      ],
    ),
    Cable(
      'NYA(Cu/PVC)',
      'assets/nya.png',
      1,
      [
        Materials(
          450/750,
          'Volt',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'NAYA(Al/PVC)',
      'assets/naya.png',
      1,
      [
        Materials(
          450/750,
          'Volt',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'NYM(Cu/PVC/PVC)',
      'assets/nym.png',
      1,
      [
        Materials(
          300/500,
          'Volt',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'N2XY(Cu/XLPE/PVC)',
      'assets/n2xy.png',
      1,
      [
        Materials(
          1.2,
          'kV',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'NYCY(Cu/PVC/CWS/PVC)',
      'assets/nycy.png',
      1,
      [
        Materials(
          1.2,
          'kV',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'NYRY(Cu/PVC/AWA/PVC)',
      'assets/nyry.png',
      1,
      [
        Materials(
          1.2,
          'kV',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'FRC(Cu/Mica/XLPE/LSFH)',
      'assets/frc.png',
      1,
      [
        Materials(
          1.2,
          'kV',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'AAAC',
      'assets/aaac.png',
      1,
      [
        Materials(
          27,
          'm³',
          'Volume',
        ),
        Materials(
          150,
          'gr',
          'Berat',
        ),
      ],
    ),
    Cable(
      'NFA2X-T',
      'assets/nfa2x-t.png',
      1,
      [
        Materials(
          1.2,
          'kV',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    Cable(
      'NF2X',
      'assets/nf2x.png',
      1,
      [
        Materials(
          1.2,
          'kV',
          'Tegangan',
        ),
        Materials(
          1,
          'Buah',
          'Satuan',
        ),
      ],
    ),
    // PEMBATAS
  ];
}

class Materials {
  double quantity;
  String measure;
  String name;
  Materials(
    this.quantity,
    this.measure,
    this.name,
  );
}