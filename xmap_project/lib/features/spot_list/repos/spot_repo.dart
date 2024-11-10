import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../models/spot.dart';

class SpotRepo {
  Future<List<Spot>> getAllSpotList() async {


    try {
      final response = await Dio().get(
          'http://144.91.114.139:8080/api/v1/spot/all');

      // Убедимся, что данные это список
      if (response.data is List<dynamic>) {
        final dataList = response.data as List<dynamic>;

        // Преобразуем каждый элемент списка в объект Spot
        final spotList = dataList.map<Spot>((json) => Spot(
          id: json['id'],
          name: json['name'],
          latitude: json['latitude'],
          longitude: json['longitude'],
          accepted: json['accepted'],
          addingDate: DateTime.parse(json['addingDate']),
          updatingDate: DateTime.parse(json['updatingDate']),
          description: json['description'],
        )).toList();

        return spotList;
      } else {
        throw Exception('Некорректный формат данных');
      }
    } catch (e) {
      debugPrint('Ошибка при получении списка спотов: $e');
      rethrow; // Передаем ошибку дальше
    }
  }
}