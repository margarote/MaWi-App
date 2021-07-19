

double sizeText(double sizeW, double sizeH, double tamanho) {
  return tamanho == null ? (sizeW * .8) / (sizeH * .03) : ((sizeW) + (sizeH)) * tamanho;
}

double textSize(double width, {double min = 11, double max = 22}){
  if(width < min){
    return min;
  }
  if(width > max){
    return max;
  }
  return width;
}