enum AttachmentType {
  text,
  audio,
  video,
  image,
  document;

  static AttachmentType? fromJson(String? name) {
    switch (name) {
      case 'text':
        return AttachmentType.text;
      case 'audio':
        return AttachmentType.audio;
      case 'video':
        return AttachmentType.video;
      case 'image':
        return AttachmentType.image;
      case 'document':
        return AttachmentType.document;
      default:
        return AttachmentType.image;
    }
  }

  static String? toJson(AttachmentType? type) {
    return type?.name;
  }
}
