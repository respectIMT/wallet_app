// Created by Muhammed Tolkinov on 16-September-2022

/// Basic coordinate representation.
abstract class Coordinate {
  const Coordinate._(this._name, this._path);

  final String _name;
  final String _path;

  @override
  String toString() => 'name=$_name, path=$_path';
}
