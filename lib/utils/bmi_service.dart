class BMICalculatorServices{
  BMICalculatorServices({
    required this.height,
    required this.weight, 

  });
  final int height;
  final int weight;
  double?_bmi;

  String calculateBMI() {
    _bmi = weight /((height/100) * (height/100));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi! < 18.5){
      return 'kurus';
    }else if(_bmi! >= 18.5 && _bmi!<25){
      return 'normal';
    } else if (_bmi! >= 25 && _bmi! <= 30){
      return 'kegemukan';
    }else{
      return 'obesitas';
    }
  }

  String getRecomendation() {
    if (_bmi! < 18.5) {
      return 'berat badan kamu kurang.kamu harus menambah porsi makan perhari';
    } else if (_bmi! >= 18.5 && _bmi! < 25) {
      return 'berat kamu ideal.teruskan';
    } else if (_bmi! >= 25 && _bmi! <= 30) {
      return 'kamu memiliki berat badan berlebihan.diharapkan menerapkan gaya hidup sehat';
    } else {
      return 'berat badan kamu telah obesitas.disarankan untuk lebih banyak bergerak';
    }
  }
}