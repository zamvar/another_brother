class LabelInfo {
  int labelNameIndex = -1;
  bool isAutoCut = true;
  bool isEndCut = true;
  bool isHalfCut = false;
  bool isSpecialTape = false;
  bool isCutMark = false;
  LabelColor labelColor;
  LabelColor labelFontColor;
  int labelType = -1;

  LabelInfo(
      {
      // TODO Consider using labal ID instead
      this.labelNameIndex = -1,
      this.isAutoCut = true,
      this.isEndCut = true,
      this.isHalfCut = false,
      this.isSpecialTape = false,
      this.isCutMark = false,
      this.labelColor = LabelColor.UNSUPPORT,
      this.labelFontColor = LabelColor.UNSUPPORT,
      this.labelType = -1});

  LabelInfo fromMap(Map<dynamic, dynamic> map) {
    return LabelInfo(
      labelNameIndex: map["labelNameIndex"],
      isAutoCut: map["isAutoCut"],
      isEndCut: map["isEndCut"],
      isHalfCut: map["isHalfCut"],
      isSpecialTape: map["isSpecialTape"],
      isCutMark: map["isCutMark"],
      labelColor: LabelColor.fromMap(map["labelColor"]),
      labelFontColor: LabelColor.fromMap(map["labelFontColor"]),
      labelType: map["labelType"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "labelNameIndex": labelNameIndex,
      "isAutoCut": isAutoCut,
      "isEndCut" : isEndCut,
      "isHalfCut" : isHalfCut,
      "isSpecialTape" : isSpecialTape,
      "isCutMark" : isCutMark,
      "labelColor" : labelColor,
      "labelFontColor": labelType
    };
  }
}

class LabelColor {
  final int _id;

  const LabelColor._internal(this._id);

  static const WHITE = const LabelColor._internal(1);
  static const OTHERS = const LabelColor._internal(2);
  static const CLEAR = const LabelColor._internal(3);
  static const RED = const LabelColor._internal(4);
  static const BLUE = const LabelColor._internal(5);
  static const YELLOW = const LabelColor._internal(6);
  static const GREEN = const LabelColor._internal(7);
  static const BLACK = const LabelColor._internal(8);
  static const CLEAR_WHITE = const LabelColor._internal(9);
  static const GOLD = const LabelColor._internal(10);
  static const GOLD_PREMIUM = const LabelColor._internal(11);
  static const SILVER_PREMIUM = const LabelColor._internal(12);
  static const OTHERS_PREMIUM = const LabelColor._internal(13);
  static const OTHERS_MASKING = const LabelColor._internal(14);
  static const LIGHTBLUE_SATIN = const LabelColor._internal(15);
  static const MINT_SATIN = const LabelColor._internal(16);
  static const SILVER_SATIN = const LabelColor._internal(17);
  static const MATTE_WHITE = const LabelColor._internal(32);
  static const MATTE_CLEAR = const LabelColor._internal(33);
  static const MATTE_SILVER = const LabelColor._internal(34);
  static const SATIN_GOLD = const LabelColor._internal(35);
  static const SATIN_SILVER = const LabelColor._internal(36);
  static const BLUE_WHITE = const LabelColor._internal(48);
  static const RED_WHITE = const LabelColor._internal(49);
  static const FLUORESCENT_ORANGE = const LabelColor._internal(64);
  static const FLUORESCENT_YELLOW = const LabelColor._internal(65);
  static const BERRY_PINK = const LabelColor._internal(80);
  static const LIGHT_GRAY = const LabelColor._internal(81);
  static const LIME_GREEN = const LabelColor._internal(82);
  static const FABRIC_YELLOW = const LabelColor._internal(96);
  static const FABRIC_PINK = const LabelColor._internal(97);
  static const FABRIC_BLUE = const LabelColor._internal(98);
  static const TUBE_WHITE = const LabelColor._internal(112);
  static const SELF_WHITE = const LabelColor._internal(128);
  static const FLEXIBLE_WHITE = const LabelColor._internal(144);
  static const FLEXIBLE_YELLOW = const LabelColor._internal(145);
  static const CLEANING = const LabelColor._internal(240);
  static const STENCIL = const LabelColor._internal(241);
  static const PASTEL_PURPLE = const LabelColor._internal(37);
  static const NAVY_BLUE = const LabelColor._internal(83);
  static const WINE_RED = const LabelColor._internal(84);
  static const UNSUPPORT = const LabelColor._internal(255);

  static final _values = [
    WHITE,
    OTHERS,
    CLEAR,
    RED,
    BLUE,
    YELLOW,
    GREEN,
    BLACK,
    CLEAR_WHITE,
    GOLD,
    GOLD_PREMIUM,
    SILVER_PREMIUM,
    OTHERS_PREMIUM,
    OTHERS_MASKING,
    LIGHTBLUE_SATIN,
    MINT_SATIN,
    SILVER_SATIN,
    MATTE_WHITE,
    MATTE_CLEAR,
    MATTE_SILVER,
    SATIN_GOLD,
    SATIN_SILVER,
    BLUE_WHITE,
    RED_WHITE,
    FLUORESCENT_ORANGE,
    FLUORESCENT_YELLOW,
    BERRY_PINK,
    LIGHT_GRAY,
    LIME_GREEN,
    FABRIC_YELLOW,
    FABRIC_PINK,
    FABRIC_BLUE,
    TUBE_WHITE,
    SELF_WHITE,
    FLEXIBLE_WHITE,
    FLEXIBLE_YELLOW,
    CLEANING,
    STENCIL,
    PASTEL_PURPLE,
    NAVY_BLUE,
    WINE_RED,
    UNSUPPORT
  ];

  int getId() {
    return _id;
  }

  static int getItemId(index) {
    if (index < 0 || index > _values.length) {
      return UNSUPPORT.getId();
    }

    return _values[index].getId();
  }

  static LabelColor valueFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      LabelColor num = _values[i];
      if (num.getId() == id) {
        return num;
      }
    }
    return UNSUPPORT;
  }

  static LabelColor fromMap(Map<dynamic, dynamic> map) {
    int id = map["id"];
    return LabelColor.valueFromID(id);
  }

  Map<String, dynamic> toMap() {
    return {"id": _id};
  }
}

class PT3 {
  final int _id;

  const PT3._internal(this._id);

  static const W3_5 = PT3._internal(18);
  static const W6 = PT3._internal(19);
  static const W9 = PT3._internal(20);
  static const W12 = PT3._internal(11);
  static const UNSUPPORT = PT3._internal(255);

  static final _values = [W3_5, W6, W9, W12, UNSUPPORT];

  int getId() {
    return _id;
  }

  static int getItemId(index) {
    if (index < 0 || index > _values.length) {
      return UNSUPPORT.getId();
    }

    return _values[index].getId();
  }

  static PT3 valueFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      PT3 num = _values[i];
      if (num.getId() == id) {
        return num;
      }
    }
    return UNSUPPORT;
  }

  static int ordinalFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      PT3 num = _values[i];
      if (num.getId() == id) {
        return i;
      }
    }
    return -1;
  }

  static PT3 fromMap(Map<dynamic, dynamic> map) {
    int id = map["id"];
    return PT3.valueFromID(id);
  }

  Map<String, dynamic> toMap() {
    return {"id": _id};
  }
}

class PT {
  final int _id;

  const PT._internal(this._id);

  static const W3_5 = const PT._internal(18);
  static const W6 = const PT._internal(19);
  static const W9 = const PT._internal(20);
  static const W12 = const PT._internal(11);
  static const W18 = const PT._internal(21);
  static const W24 = const PT._internal(22);
  static const HS_W6 = const PT._internal(23);
  static const HS_W9 = const PT._internal(24);
  static const HS_W12 = const PT._internal(25);
  static const HS_W18 = const PT._internal(26);
  static const HS_W24 = const PT._internal(27);
  static const W36 = const PT._internal(28);
  static const R6_5 = const PT._internal(29);
  static const R6_0 = const PT._internal(31);
  static const R5_0 = const PT._internal(32);
  static const R4_0 = const PT._internal(33);
  static const R3_5 = const PT._internal(34);
  static const R3_0 = const PT._internal(35);
  static const R2_5 = const PT._internal(36);
  static const FLE_W21H45 = const PT._internal(37);
  static const UNSUPPORT = const PT._internal(255);

  static final _values = [
    W3_5,
    W6,
    W9,
    W12,
    W18,
    W24,
    HS_W6,
    HS_W9,
    HS_W12,
    HS_W18,
    HS_W24,
    W36,
    R6_5,
    R6_0,
    R5_0,
    R4_0,
    R3_5,
    R3_0,
    R2_5,
    FLE_W21H45,
    UNSUPPORT
  ];

  int getId() {
    return _id;
  }

  static int getItemId(index) {
    if (index < 0 || index > _values.length) {
      return UNSUPPORT.getId();
    }

    return _values[index].getId();
  }

  static PT valueFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      PT num = _values[i];
      if (num.getId() == id) {
        return num;
      }
    }
    return UNSUPPORT;
  }

  static int ordinalFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      PT num = _values[i];
      if (num.getId() == id) {
        return i;
      }
    }
    return -1;
  }

  static PT fromMap(Map<dynamic, dynamic> map) {
    int id = map["id"];
    return PT.valueFromID(id);
  }

  Map<String, dynamic> toMap() {
    return {"id": _id};
  }
}

class QL700 {
  final int _id;

  const QL700._internal(this._id);

  static const W17H54 = const QL700._internal(1);
  static const W17H87 = const QL700._internal(2);
  static const W23H23 = const QL700._internal(3);
  static const W29H42 = const QL700._internal(4);
  static const W29H90 = const QL700._internal(5);
  static const W38H90 = const QL700._internal(6);
  static const W39H48 = const QL700._internal(7);
  static const W52H29 = const QL700._internal(8);
  static const W62H29 = const QL700._internal(9);
  static const W62H100 = const QL700._internal(10);
  static const W12 = const QL700._internal(11);
  static const W29 = const QL700._internal(12);
  static const W38 = const QL700._internal(13);
  static const W50 = const QL700._internal(14);
  static const W54 = const QL700._internal(15);
  static const W62 = const QL700._internal(16);
  static const W60H86 = const QL700._internal(17);
  static const W62RB = const QL700._internal(38);
  static const W54H29 = const QL700._internal(39);
  static const UNSUPPORT = const QL700._internal(255);

  static final _values = [
    W17H54,
    W17H87,
    W23H23,
    W29H42,
    W29H90,
    W38H90,
    W39H48,
    W52H29,
    W62H29,
    W62H100,
    W12,
    W29,
    W38,
    W50,
    W54,
    W62,
    W60H86,
    W62RB,
    W54H29,
    UNSUPPORT,
  ];

  int getId() {
    return _id;
  }

  static int getItemId(index) {
    if (index < 0 || index > _values.length) {
      return UNSUPPORT.getId();
    }

    return _values[index].getId();
  }

  static QL700 valueFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      QL700 num = _values[i];
      if (num.getId() == id) {
        return num;
      }
    }
    return UNSUPPORT;
  }

  static int ordinalFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      QL700 num = _values[i];
      if (num.getId() == id) {
        return i;
      }
    }
    return -1;
  }

  static QL700 fromMap(Map<dynamic, dynamic> map) {
    int id = map["id"];
    return QL700.valueFromID(id);
  }

  Map<String, dynamic> toMap() {
    return {"id": _id};
  }
}

class QL1115 {
  final _id;

  const QL1115._internal(this._id);

  static const W17H54 = const QL1115._internal(1);
  static const W17H87 = const QL1115._internal(2);
  static const W23H23 = const QL1115._internal(3);
  static const W29H42 = const QL1115._internal(4);
  static const W29H90 = const QL1115._internal(5);
  static const W38H90 = const QL1115._internal(6);
  static const W39H48 = const QL1115._internal(7);
  static const W52H29 = const QL1115._internal(8);
  static const W62H29 = const QL1115._internal(9);
  static const W62H100 = const QL1115._internal(10);
  static const W12 = const QL1115._internal(11);
  static const W29 = const QL1115._internal(12);
  static const W38 = const QL1115._internal(13);
  static const W50 = const QL1115._internal(14);
  static const W54 = const QL1115._internal(15);
  static const W62 = const QL1115._internal(16);
  static const W60H86 = const QL1115._internal(17);
  static const W102 = const QL1115._internal(40);
  static const W102H51 = const QL1115._internal(41);
  static const W102H152 = const QL1115._internal(48);
  static const W103 = const QL1115._internal(49);
  static const W103H164 = const QL1115._internal(50);
  static const DT_W90 = const QL1115._internal(51);
  static const DT_W102 = const QL1115._internal(52);
  static const DT_W102H51 = const QL1115._internal(53);
  static const DT_W102H152 = const QL1115._internal(54);
  static const UNSUPPORT = const QL1115._internal(255);

  static final _values = [
    W17H54,
    W17H87,
    W23H23,
    W29H42,
    W29H90,
    W38H90,
    W39H48,
    W52H29,
    W62H29,
    W62H100,
    W12,
    W29,
    W38,
    W50,
    W54,
    W62,
    W60H86,
    W102,
    W102H51,
    W102H152,
    W103,
    W103H164,
    DT_W90,
    DT_W102,
    DT_W102H51,
    DT_W102H152,
    UNSUPPORT
  ];

  int getId() {
    return _id;
  }

  static int getItemId(index) {
    if (index < 0 || index > _values.length) {
      return UNSUPPORT.getId();
    }

    return _values[index].getId();
  }

  static QL1115 valueFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      QL1115 num = _values[i];
      if (num.getId() == id) {
        return num;
      }
    }
    return UNSUPPORT;
  }

  static int ordinalFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      QL1115 num = _values[i];
      if (num.getId() == id) {
        return i;
      }
    }
    return -1;
  }

  static QL1115 fromMap(Map<dynamic, dynamic> map) {
    int id = map["id"];
    return QL1115.valueFromID(id);
  }

  Map<String, dynamic> toMap() {
    return {"id": _id};
  }
}

class QL1100 {
  final _id;

  const QL1100._internal(this._id);

  static const W17H54 = const QL1100._internal(1);
  static const W17H87 = const QL1100._internal(2);
  static const W23H23 = const QL1100._internal(3);
  static const W29H42 = const QL1100._internal(4);
  static const W29H90 = const QL1100._internal(5);
  static const W38H90 = const QL1100._internal(6);
  static const W39H48 = const QL1100._internal(7);
  static const W52H29 = const QL1100._internal(8);
  static const W62H29 = const QL1100._internal(9);
  static const W62H100 = const QL1100._internal(10);
  static const W12 = const QL1100._internal(11);
  static const W29 = const QL1100._internal(12);
  static const W38 = const QL1100._internal(13);
  static const W50 = const QL1100._internal(14);
  static const W54 = const QL1100._internal(15);
  static const W62 = const QL1100._internal(16);
  static const W60H86 = const QL1100._internal(17);
  static const W102 = const QL1100._internal(40);
  static const W102H51 = const QL1100._internal(41);
  static const W102H152 = const QL1100._internal(48);
  static const W103 = const QL1100._internal(49);
  static const W103H164 = const QL1100._internal(50);
  static const UNSUPPORT = const QL1100._internal(255);

  static final List<QL1100> _values = [
    W17H54,
    W17H87,
    W23H23,
    W29H42,
    W29H90,
    W38H90,
    W39H48,
    W52H29,
    W62H29,
    W62H100,
    W12,
    W29,
    W38,
    W50,
    W54,
    W62,
    W60H86,
    W102,
    W102H51,
    W102H152,
    W103,
    W103H164,
    UNSUPPORT
  ];

  int getId() {
    return _id;
  }

  static int getItemId(index) {
    if (index < 0 || index > _values.length) {
      return UNSUPPORT.getId();
    }

    return _values[index].getId();
  }

  static QL1100 valueFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      QL1100 num = _values[i];
      if (num.getId() == id) {
        return num;
      }
    }
    return UNSUPPORT;
  }

  static int ordinalFromID(int id) {
    for (int i = 0; i < _values.length; ++i) {
      QL1100 num = _values[i];
      if (num.getId() == id) {
        return i;
      }
    }
    return -1;
  }

  static QL1100 fromMap(Map<dynamic, dynamic> map) {
    int id = map["id"];
    return QL1100.valueFromID(id);
  }

  Map<String, dynamic> toMap() {
    return {"id": _id};
  }
}