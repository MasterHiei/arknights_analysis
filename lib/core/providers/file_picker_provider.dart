import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_picker_provider.g.dart';

@riverpod
FilePicker filePicker(FilePickerRef ref) => FilePicker.platform;
