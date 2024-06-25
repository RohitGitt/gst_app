extension PercentageExtensionForInt on int {
  double percentageOf(double value) {
    return ((this / 100) * value);
  }
}

extension PercentageExtensionForDouble on double {
  double percentageOf(double value) {
    return ((this / 100) * value);
  }
}


extension IsFalseEntension on bool {
  bool isFalse(){
    if(this == false){
      return true ;
    }else{
      return false ;
    }
  }
}


extension IsTrueExtension on bool {
  bool isTrue(){
    if(this == true ){
      return true  ;
    }else {
      return false ;
    }
  }
}