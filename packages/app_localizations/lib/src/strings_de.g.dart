///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'Hallo ${name}';
	@override String get language => 'Sprache';
	@override late final TranslationsThemeDe theme = TranslationsThemeDe._(_root);
}

// Path: theme
class TranslationsThemeDe implements TranslationsThemeEn {
	TranslationsThemeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get theme => 'Thema';
	@override String get system => 'System';
	@override String get dark => 'Dunkel';
	@override String get light => 'Hell';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return ({required Object name}) => 'Hallo ${name}';
			case 'language': return 'Sprache';
			case 'theme.theme': return 'Thema';
			case 'theme.system': return 'System';
			case 'theme.dark': return 'Dunkel';
			case 'theme.light': return 'Hell';
			default: return null;
		}
	}
}

