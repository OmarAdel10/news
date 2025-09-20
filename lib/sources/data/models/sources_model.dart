class SourcesModel {
  final String id;
  final String name;

  const SourcesModel({required this.id, required this.name});

  static List<SourcesModel> sources = List.generate(
    10,
    (index) => SourcesModel(id: '$index', name: 'Source $index'),
  );
}
