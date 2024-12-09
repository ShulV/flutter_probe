import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:xmap_project/features/models/spot_with_image_links.dart';
import 'package:xmap_project/features/models/spot.dart';

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
          insertedAt: DateTime.parse(json['insertedAt']),
          updatedAt: DateTime.parse(json['updatedAt']),
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

  Future<SpotWithImageLinks> getSpotWithImageLinks(String spotId) async {
    try {
      final response = await Dio().get(
          'http://144.91.114.139:8080/api/v1/spot/$spotId');

      // Убедимся, что данные это список
      if (response.data is Map<String, dynamic>) {
        final data = fromJson(response.data);
        return data;
      } else {
        throw Exception('Некорректный формат данных');
      }
    } catch (e) {
      debugPrint('Ошибка при получении списка спотов: $e');
      rethrow; // Передаем ошибку дальше
    }
  }

  // Функция для преобразования JSON в объект SpotWithImageLinks
  SpotWithImageLinks fromJson(Map<String, dynamic> json) {
    return SpotWithImageLinks(
      id: json['id'] as String,
      name: json['name'] as String,
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      insertedAt: DateTime.parse(json['insertedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      description: json['description'] as String,
      spotImageLinks: (json['spotImageLinks'] as List<dynamic>)
          .map((link) => link as String)
          .toList(),
    );
  }
}