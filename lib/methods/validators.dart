String? nameValidator(String? value) {
  if ((value?.length ?? 0) < 3) {
    return 'Name must be at least 3 characters long';
  }
  return 'Name already taken';
}
