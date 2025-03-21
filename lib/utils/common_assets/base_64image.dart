import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../helper/asset_helper.dart';

class AppNetworkImage extends StatefulWidget {
  const AppNetworkImage({
    super.key,
    required this.img,
    this.height,
    this.width,
    this.fit,
    this.placeholder,
  });

  final String? img;
  final double? height;
  final String? placeholder;
  final double? width;
  final BoxFit? fit;

  @override
  State<AppNetworkImage> createState() => _Base64ImageState();
}

class _Base64ImageState extends State<AppNetworkImage> {
  @override
  Widget build(BuildContext context) {
    if (widget.img == null || widget.img!.isEmpty) {
      return _buildPlaceholder();
    }
    return CachedNetworkImage(
      imageUrl: widget.img ?? '',
      height: widget.height,
      width: widget.width,
      fit: widget.fit,
      placeholder: (context, url) => _buildPlaceholder(), // Custom Placeholder
      errorWidget: (context, url, error) => placeHolder(),
    );
  }

  Image placeHolder() {
    return Image.asset(
      AppAssets.pngFromImages('samba'),
      height: widget.height,
      width: widget.width,
      fit: BoxFit.contain,
    );
  }

  /// ✅ **Handles Custom Placeholder**
  Widget _buildPlaceholder() {
    return Image.asset(
      widget.placeholder ?? AppAssets.pngFromImages('samba'),
      height: widget.height,
      width: widget.width,
      fit: BoxFit.contain,
    );
  }
}
