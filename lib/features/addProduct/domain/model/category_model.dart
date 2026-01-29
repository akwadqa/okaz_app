enum ProductSpecType {
  select,
  toggle,
}

class ProductSpec {
  final String key;
  final String title;
  final bool required;
  final ProductSpecType type;
  final List<String>? options;

  const ProductSpec({
    required this.key,
    required this.title,
    this.required = false,
    required this.type,
    this.options,
  });
}

const mockProductSpecs = [
  ProductSpec(
    key: 'sim_type',
    title: 'نوع الشريحة',
    required: true,
    type: ProductSpecType.select,
    options: ['شريحة واحدة', 'شريحتين', '3 شرائح'],
  ),
  ProductSpec(
    key: 'storage',
    title: 'سعة التخزين',
    required: true,
    type: ProductSpecType.select,
    options: ['64GB', '128GB', '256GB'],
  ),
  ProductSpec(
    key: 'main_camera',
    title: 'دقة الكاميرا',
    required: true,
    type: ProductSpecType.select,
    options: ['12MP', '48MP', '64MP'],
  ),
  ProductSpec(
    key: 'under_warranty',
    title: 'تحت الضمان',
    type: ProductSpecType.toggle,
  ),
];
