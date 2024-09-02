enum OrderBy {
  totalAmount,
  receiptDate,
  createdAt;

  // static OrderBy? by(String name) {
  //   switch (name) {
  //     case 'total_amount':
  //       return OrderBy.totalAmount;

  //     case 'created_at':
  //       return OrderBy.createdAt;
  //     default:
  //       return OrderBy.createdAt;
  //   }
  // }

  // static String? toJson(OrderBy? orderBy) {
  //   switch (orderBy) {
  //     case OrderBy.createdAt:
  //       return 'created_at';

  //     case OrderBy.totalAmount:
  //       return 'total_amount';
  //     default:
  //       return 'created_at';
  //   }
  // }
}
