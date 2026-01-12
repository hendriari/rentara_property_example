import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/common_appbar_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/form_field_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/submitting_loading_widget.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/entities/post_property_entities.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/bloc/post_property/post_property_bloc.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/bloc/post_property/post_property_event.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/bloc/post_property/post_property_state.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/presentation/widgets/post_property_picker_widget.dart';

class PostPropertyPage extends StatefulWidget {
  const PostPropertyPage({super.key});

  @override
  State<PostPropertyPage> createState() => _PostPropertyPageState();
}

class _PostPropertyPageState extends State<PostPropertyPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _addressController = TextEditingController();
  final _priceController = TextEditingController();
  final _buildingAreaController = TextEditingController();
  final _landAreaController = TextEditingController();

  final ValueNotifier<String?> _selectedType = ValueNotifier(null);
  final ValueNotifier<String?> _selectedStatus = ValueNotifier(null);
  final ValueNotifier<String?> _imagePath = ValueNotifier(null);

  final List<String> _types = [
    'House',
    'Apartment',
    'Villa',
    'Office',
    'Others',
  ];
  final List<String> _statuses = ['New', 'Second'];

  late TextTheme _textTheme;
  late ColorScheme _colorScheme;
  late Helper _helper;

  @override
  void initState() {
    super.initState();
    _helper = injector<Helper>();
  }

  @override
  void didChangeDependencies() {
    _textTheme = Theme.of(context).textTheme;
    _colorScheme = Theme.of(context).colorScheme;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _addressController.dispose();
    _priceController.dispose();
    _buildingAreaController.dispose();
    _landAreaController.dispose();
    _selectedType.dispose();
    _selectedStatus.dispose();
    _imagePath.dispose();
    super.dispose();
  }

  // PICK IMAGE
  void _onPickImage() async {
    String? source;

    await showPostPropertyPicker(
      context,
      title: "Select Image Source",
      items: ["Camera", "Gallery"],
      onSave: (value) {
        source = value;
      },
    );

    if (source != null) {
      if (!mounted) return;
      context.read<PostPropertyBloc>().add(
        PostPropertyEvent.pickImage(source: source!.toLowerCase()),
      );
    }
  }

  // SUBMIT
  void _onSubmit() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      if (_imagePath.value == null) {
        _helper.showToast(
          message: 'Please select an image',
          backGroundColor: _colorScheme.error,
        );
        return;
      }
      if (_selectedType.value == null || _selectedStatus.value == null) {
        _helper.showToast(
          message: 'Please select type and status',
          backGroundColor: _colorScheme.error,
        );
        return;
      }

      final data = PostPropertyEntities(
        type: _selectedType.value!,
        status: _selectedStatus.value!.toLowerCase(),
        name: _nameController.text,
        description: _descriptionController.text,
        address: _addressController.text,
        price: int.parse(_priceController.text),
        image: _imagePath.value!,
        buildingArea: int.parse(_buildingAreaController.text),
        landArea: int.parse(_landAreaController.text),
      );

      context.read<PostPropertyBloc>().add(
        PostPropertyEvent.postProperty(data: data),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PostPropertyBloc, PostPropertyState>(
      listener: (context, state) {
        state.whenOrNull(
          updatedImageSource: (path) {
            _imagePath.value = path;
          },
          successPostProperty: (message) {
            _helper.showToast(message: message);

            _nameController.clear();
            _descriptionController.clear();
            _addressController.clear();
            _priceController.clear();
            _buildingAreaController.clear();
            _landAreaController.clear();

            _selectedType.value = null;
            _selectedStatus.value = null;
            _imagePath.value = null;
          },
          failedPostProperty: (message) {
            _helper.showToast(
              message: message,
              backGroundColor: _colorScheme.error,
            );
          },
        );
      },
      child: Scaffold(
        appBar: const CommonAppbarWidget(),
        body: _buildBodyWidget(),
      ),
    );
  }

  Widget _buildBodyWidget() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: AppPadding.pagePadding,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE PICKER TITLE
              Text("Property Image", style: _textTheme.bodyMedium),

              SizedBox(height: 8.h),

              // IMAGE PICKER
              ValueListenableBuilder<String?>(
                valueListenable: _imagePath,
                builder: (context, path, _) {
                  return GestureDetector(
                    onTap: _onPickImage,
                    child: Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.neutral100,
                        borderRadius: BorderRadius.circular(
                          AppRadius.commonRadius,
                        ),
                        border: Border.all(color: AppColors.neutral300),
                        image: path != null
                            ? DecorationImage(
                                image: FileImage(File(path)),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: path == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.camera,
                                  size: 40.sp,
                                  color: AppColors.neutral400,
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  'Add Property Image',
                                  style: _textTheme.bodyMedium?.copyWith(
                                    color: AppColors.neutral500,
                                  ),
                                ),
                              ],
                            )
                          : null,
                    ),
                  );
                },
              ),

              SizedBox(height: 20.h),

              // NAME TITLE
              Text("Property Name", style: _textTheme.bodyMedium),

              // PROPERTY NAME FORM FIELD
              FormFieldWidget(
                margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                textEditingController: _nameController,
                hint: "Enter property name",
                formFieldValidator: (value) =>
                    value!.isEmpty ? 'Name is required!' : null,
              ),

              // TYPE & STATUS
              Row(
                children: [
                  // TYPE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // TYPE TITLE
                        Text("Type", style: _textTheme.bodyMedium),

                        SizedBox(height: 5.h),

                        // TYPE PICKER
                        ValueListenableBuilder<String?>(
                          valueListenable: _selectedType,
                          builder: (context, type, _) {
                            return FormFieldWidget(
                              hint: "Select Type",
                              readOnly: true,
                              textEditingController: TextEditingController(
                                text: type,
                              ),
                              suffixIcon: const Icon(
                                CupertinoIcons.chevron_down,
                                size: 16,
                                color: AppColors.neutral500,
                              ),
                              onTap: () async {
                                await showPostPropertyPicker(
                                  context,
                                  title: "Select Property Type",
                                  items: _types,
                                  initialValue: type,
                                  onSave: (result) {
                                    if (result != null) {
                                      _selectedType.value = result;
                                    }
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 12.w),

                  // STATUS
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // STATUS TITLE
                        Text("Status", style: _textTheme.bodyMedium),

                        SizedBox(height: 5.h),

                        // STATUS PICKER
                        ValueListenableBuilder<String?>(
                          valueListenable: _selectedStatus,
                          builder: (context, status, _) {
                            return FormFieldWidget(
                              hint: "Select Status",
                              readOnly: true,
                              textEditingController: TextEditingController(
                                text: status,
                              ),
                              suffixIcon: const Icon(
                                CupertinoIcons.chevron_down,
                                size: 16,
                                color: AppColors.neutral500,
                              ),
                              onTap: () async {
                                showPostPropertyPicker(
                                  context,
                                  title: "Select Property Status",
                                  items: _statuses,
                                  initialValue: status,
                                  onSave: (result) {
                                    if (result != null) {
                                      _selectedStatus.value = result;
                                    }
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15.h),

              // DESCRIPTION
              Text("Description", style: _textTheme.bodyMedium),
              FormFieldWidget(
                margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                textEditingController: _descriptionController,
                hint: "Enter property description",
                maxLines: 4,
                formFieldValidator: (value) =>
                    value!.isEmpty ? 'Description is required!' : null,
              ),

              // ADDRESS
              Text("Address", style: _textTheme.bodyMedium),
              FormFieldWidget(
                margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                textEditingController: _addressController,
                hint: "Enter property address",
                prefixIcon: Icon(
                  CupertinoIcons.location,
                  color: AppColors.neutral400,
                ),
                formFieldValidator: (value) =>
                    value!.isEmpty ? 'Address is required!' : null,
              ),

              // PRICE
              Text("Price", style: _textTheme.bodyMedium),
              FormFieldWidget(
                margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                textEditingController: _priceController,
                hint: "Enter price",
                textInputType: TextInputType.number,
                prefixIcon: Icon(
                  CupertinoIcons.money_dollar,
                  color: AppColors.neutral400,
                ),
                formFieldValidator: (value) =>
                    value!.isEmpty ? 'Price is required!' : null,
              ),

              // AREA
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Building Area", style: _textTheme.bodyMedium),
                        FormFieldWidget(
                          margin: EdgeInsets.only(top: 5.h),
                          textEditingController: _buildingAreaController,
                          hint: "LB",
                          textInputType: TextInputType.number,
                          formFieldValidator: (value) =>
                              value!.isEmpty ? 'Required!' : null,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Land Area", style: _textTheme.bodyMedium),
                        FormFieldWidget(
                          margin: EdgeInsets.only(top: 5.h),
                          textEditingController: _landAreaController,
                          hint: "LT",
                          textInputType: TextInputType.number,
                          formFieldValidator: (value) =>
                              value!.isEmpty ? 'Required!' : null,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30.h),

              // SUBMIT BUTTON
              BlocBuilder<PostPropertyBloc, PostPropertyState>(
                builder: (context, state) {
                  return ButtonWidget(
                    buttonText: "",
                    onTap: _onSubmit,
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: state.maybeWhen(
                      loadingPostProperty: () => SubmittingLoadingWidget(),
                      orElse: () => Text(
                        "Submit Property",
                        style: _textTheme.labelLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
