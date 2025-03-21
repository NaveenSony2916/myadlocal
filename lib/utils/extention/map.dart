class Local {
  final Map<String, dynamic> _map;

  Local(this._map);

  // Add more methods if needed
}

extension MapWithLocalized on Map<String, dynamic> {
  Local get local => Local(this);
}
