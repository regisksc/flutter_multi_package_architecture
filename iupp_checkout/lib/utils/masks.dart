import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// TODO put on the components module
final cpfFormater = MaskTextInputFormatter(
  mask: '###.###.###-##',
  filter: {
    "#": RegExp('[0-9]'),
  },
);

final phoneFormater = MaskTextInputFormatter(
  mask: '(##) #####-####',
  filter: {
    "#": RegExp('[0-9]'),
  },
);

final cepFormater = MaskTextInputFormatter(
  mask: '#####-####',
  filter: {
    "#": RegExp('[0-9]'),
  },
);