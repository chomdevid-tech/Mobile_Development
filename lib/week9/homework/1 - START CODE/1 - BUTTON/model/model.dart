class ButtonData {
  String name;
  bool selected;

  ButtonData(this.name, this.selected);

  static ButtonData fromJson(Map<String, dynamic> json) {
    String namekey = 'name';
    String selectedkey = 'selected';
    assert(json[namekey] is String);
    assert(json[selectedkey] is bool);

    String name = json[namekey];
    bool selected = json[selectedkey];
    return ButtonData(name, selected);
  }
}
