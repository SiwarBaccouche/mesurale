double getResponsiveItemSize({required double width, required double value}) {
  return width * (value / 375);
}

//The purpose of this function is to make the layout of the app responsive
// across different screen sizes by scaling the size of the UI elements based on the width of the screen.

//The reference width of 375 is based on the design of an iPhone 6, which has a width of 375 logical pixels (smallest device).
