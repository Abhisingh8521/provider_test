class Calculator {
  int a;
  int b;

  Calculator({required this.a, required this.b});

    int add(){
      var c= a +b;
      return c;
    }
    int sub(){
      var c= a -b;
      return c;
    }
    int multi(){
      var c= a * b;
      return c;
    }

    double div() {
      var d = a / b;
      return d;
    }

  }

