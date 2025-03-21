/*  Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area. */



void main() {
  Rectangle rect = Rectangle(5.0, 10.0);
  
  print('The area of the rectangle is: ${rect.area}');
}

class Rectangle {
  double _width;
  double _height;
  
  Rectangle(this._width, this._height);

  double get area {
    return _width * _height;
  }
}

