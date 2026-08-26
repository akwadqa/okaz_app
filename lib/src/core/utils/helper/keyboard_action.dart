import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../../resourses/color_manager/app_colors.dart';

class KeyboardDone {
  KeyboardDone._();

  /// Wraps [child] with a single KeyboardActions "Done" bar
  /// for the given number-field [nodes].
  /// If [nodes] is empty, returns [child] unchanged (prevents crash).
  static Widget wrap({
    required List<FocusNode> nodes,
    required Widget child,
  }) {
    if (nodes.isEmpty) return child;
    return KeyboardActions(
      config: KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
        nextFocus: false,
        actions: nodes.map(_item).toList(),
      ),
      child: child,
    );
  }

  static KeyboardActionsItem _item(FocusNode node) {
    return KeyboardActionsItem(
      focusNode: node,
      displayArrows: false,
      toolbarButtons: [
        (node) => GestureDetector(
              onTap: node.unfocus,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'done'.tr(),
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
      ],
    );
  }
}