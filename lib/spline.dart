import 'dart:core';


class CubicSpline{
  List<double> x;
  List<double> y;

  CubicSpline({required this.x, required this.y});

  List create() {

    //Количество узлов сетки
    int n = x.length - 1;

    //Т.к. коэффициент ai = y(xi), фактически копируем массив y в массив a.
    List<double> a = [...y];

    //Создаем массив отрезков сплайна
    var S = List.generate(n, (i) => []);

    //Массивы неизвестных коэффициентов
    List<double> b = List.generate(n, (i) => 0);
    List<double> c = List.generate(n, (i) => 0);
    List<double> d = List.generate(n, (i) => 0);

    //Инициализация массива сплайна
    //На это этапе сплайн имеет вид:
    // ai        bi ci di xi
    //[-3.02721, 0, 0, 0, -4], S[0]
    //[ 0.42336, 0, 0, 0, -3], S[1]
    //[ 1.81859, 0, 0, 0, -2], S[2]
    //[ 0.84147, 0, 0, 0, -1], S[3]
    //[       0, 0, 0, 0,  0], S[4]
    //[ 0.84147, 0, 0, 0,  1], S[5]
    //[ 1.81859, 0, 0, 0,  2], S[6]
    //[ 0.42336, 0, 0, 0,  3]  S[7]

    for (int i = 0; i < 8; i++) {
      S[i].add(a[i]);
      S[i].add(b[i]);
      S[i].add(c[i]);
      S[i].add(d[i]);
      S[i].add(x[i]);
    }

    //Массивы для прогоночных коэффициентов
    List<double> ksi = List.generate(n, (i) => 0);
    List<double> eta = List.generate(n, (i) => 0);

    late double A, B, C, F, hi, u;

    //Прямая прогонка
    for (int i = 1; i < n - 1; ++i) {
      hi = x[i] - x[i - 1];
      double hi1 = x[i + 1] - x[i];
      A = hi;
      B = hi1;
      C = 2 * (hi + hi1);
      F = 6 * (((y[i + 1] - y[i]) / hi1) - ((y[i] - y[i - 1]) / hi));
      u = A * ksi[i - 1] + C;
      ksi[i] = -B / u;
      eta[i] = (F - A * eta[i - 1]) / u;
    }

    //Нашли последний коэффициент С
    S[n - 1][2] = (F - A * eta[n - 2]) / (C + A * ksi[n - 2]);

    //Обратная прогонка
    for (int i = n - 2; i > 0; --i) {
      //Решение СЛАУ
      S[i][2] = ksi[i] * S[i + 1][2] + eta[i];
      for (int i = n - 1; i > 0; --i) {
        double hi = x[i] - x[i - 1];
        S[i][3] = (S[i][2] - S[i - 1][2]) / hi;
        S[i][1] = hi * (2 * S[i][2] + S[i - 1][2]) / 6 + (y[i] - y[i - 1]) / hi;
      }
    }
    List results = [];
    results..add(S)..add(ksi)..add(eta);

    return results;
  }



}