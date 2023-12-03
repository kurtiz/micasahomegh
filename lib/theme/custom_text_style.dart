import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeGelasioGray50001 =>
      theme.textTheme.bodyLarge!.gelasio.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray50003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50003,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall10_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeErrorContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeGelasioErrorContainer =>
      theme.textTheme.headlineLarge!.gelasio.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeNunitoSansErrorContainer =>
      theme.textTheme.headlineLarge!.nunitoSans.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallMerriweather =>
      theme.textTheme.headlineSmall!.merriweather.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMerriweatherBold =>
      theme.textTheme.headlineSmall!.merriweather.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallNunitoSans =>
      theme.textTheme.headlineSmall!.nunitoSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMetropolis => theme.textTheme.titleLarge!.metropolis;
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumGelasioOnErrorContainer =>
      theme.textTheme.titleMedium!.gelasio.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGelasioPrimary =>
      theme.textTheme.titleMedium!.gelasio.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumNunitoSans =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumNunitoSansGray400 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansGray50001 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: appTheme.gray50001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansGray50002 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansGray700 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansGreen600 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: appTheme.green600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansOnErrorContainer =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansOnErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimary =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumNunitoSansPrimary18 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumNunitoSansPrimaryContainer =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimaryExtraBold =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoSansPrimarySemiBold =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimarySemiBold18 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimarySemiBold_1 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimarySemiBold_2 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimarySemiBold_3 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSansPrimary_1 =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumNunitoSansSemiBold =>
      theme.textTheme.titleMedium!.nunitoSans.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoSans_1 => theme.textTheme.titleMedium!.nunitoSans;
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallErrorContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallErrorContainer_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGray50003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGreen600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green600,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallRed400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w800,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get merriweather {
    return copyWith(
      fontFamily: 'Merriweather',
    );
  }

  TextStyle get metropolis {
    return copyWith(
      fontFamily: 'Metropolis',
    );
  }

  TextStyle get gelasio {
    return copyWith(
      fontFamily: 'Gelasio',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }
}
