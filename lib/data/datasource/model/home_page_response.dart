import 'dart:convert';

class HomePageResponse {
  String? type;
  HomePageResponseArgs? args;

  HomePageResponse({
    this.type,
    this.args,
  });

  factory HomePageResponse.fromRawJson(String str) => HomePageResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomePageResponse.fromJson(Map<String, dynamic> json) => HomePageResponse(
    type: json["type"],
    args: json["args"] == null ? null : HomePageResponseArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class HomePageResponseArgs {
  Values? values;
  PurpleChild? child;

  HomePageResponseArgs({
    this.values,
    this.child,
  });

  factory HomePageResponseArgs.fromRawJson(String str) => HomePageResponseArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomePageResponseArgs.fromJson(Map<String, dynamic> json) => HomePageResponseArgs(
    values: json["values"] == null ? null : Values.fromJson(json["values"]),
    child: json["child"] == null ? null : PurpleChild.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "values": values?.toJson(),
    "child": child?.toJson(),
  };
}

class PurpleChild {
  String? type;
  PurpleArgs? args;

  PurpleChild({
    this.type,
    this.args,
  });

  factory PurpleChild.fromRawJson(String str) => PurpleChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleChild.fromJson(Map<String, dynamic> json) => PurpleChild(
    type: json["type"],
    args: json["args"] == null ? null : PurpleArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class PurpleArgs {
  Body? body;

  PurpleArgs({
    this.body,
  });

  factory PurpleArgs.fromRawJson(String str) => PurpleArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleArgs.fromJson(Map<String, dynamic> json) => PurpleArgs(
    body: json["body"] == null ? null : Body.fromJson(json["body"]),
  );

  Map<String, dynamic> toJson() => {
    "body": body?.toJson(),
  };
}

class Body {
  CrossAxisAlignmentEnum? type;
  BodyArgs? args;

  Body({
    this.type,
    this.args,
  });

  factory Body.fromRawJson(String str) => Body.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    type: crossAxisAlignmentEnumValues.map[json["type"]]!,
    args: json["args"] == null ? null : BodyArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": crossAxisAlignmentEnumValues.reverse[type],
    "args": args?.toJson(),
  };
}

class BodyArgs {
  FluffyPadding? padding;
  FluffyChild? child;

  BodyArgs({
    this.padding,
    this.child,
  });

  factory BodyArgs.fromRawJson(String str) => BodyArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BodyArgs.fromJson(Map<String, dynamic> json) => BodyArgs(
    padding: json["padding"] == null ? null : FluffyPadding.fromJson(json["padding"]),
    child: json["child"] == null ? null : FluffyChild.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "padding": padding?.toJson(),
    "child": child?.toJson(),
  };
}

class FluffyChild {
  PurpleType? type;
  FluffyArgs? args;

  FluffyChild({
    this.type,
    this.args,
  });

  factory FluffyChild.fromRawJson(String str) => FluffyChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyChild.fromJson(Map<String, dynamic> json) => FluffyChild(
    type: purpleTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : FluffyArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": purpleTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class FluffyArgs {
  FluffyScrollDirection? scrollDirection;
  bool? shrinkWrap;
  List<TentacledChild>? children;

  FluffyArgs({
    this.scrollDirection,
    this.shrinkWrap,
    this.children,
  });

  factory FluffyArgs.fromRawJson(String str) => FluffyArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyArgs.fromJson(Map<String, dynamic> json) => FluffyArgs(
    scrollDirection: fluffyScrollDirectionValues.map[json["scrollDirection"]]!,
    shrinkWrap: json["shrinkWrap"],
    children: json["children"] == null ? [] : List<TentacledChild>.from(json["children"]!.map((x) => TentacledChild.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "scrollDirection": fluffyScrollDirectionValues.reverse[scrollDirection],
    "shrinkWrap": shrinkWrap,
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
  };
}

class TentacledChild {
  CrossAxisAlignmentEnum? type;
  TentacledArgs? args;

  TentacledChild({
    this.type,
    this.args,
  });

  factory TentacledChild.fromRawJson(String str) => TentacledChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledChild.fromJson(Map<String, dynamic> json) => TentacledChild(
    type: crossAxisAlignmentEnumValues.map[json["type"]]!,
    args: json["args"] == null ? null : TentacledArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": crossAxisAlignmentEnumValues.reverse[type],
    "args": args?.toJson(),
  };
}

class TentacledArgs {
  int? height;
  StickyChild? child;
  PurplePadding? padding;
  GridDelegate? gridDelegate;
  FluffyScrollDirection? scrollDirection;
  bool? shrinkWrap;
  Children? children;

  TentacledArgs({
    this.height,
    this.child,
    this.padding,
    this.gridDelegate,
    this.scrollDirection,
    this.shrinkWrap,
    this.children,
  });

  factory TentacledArgs.fromRawJson(String str) => TentacledArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledArgs.fromJson(Map<String, dynamic> json) => TentacledArgs(
    height: json["height"],
    child: json["child"] == null ? null : StickyChild.fromJson(json["child"]),
    padding: json["padding"] == null ? null : PurplePadding.fromJson(json["padding"]),
    gridDelegate: json["gridDelegate"] == null ? null : GridDelegate.fromJson(json["gridDelegate"]),
    scrollDirection: fluffyScrollDirectionValues.map[json["scrollDirection"]]!,
    shrinkWrap: json["shrinkWrap"],
    children: childrenValues.map[json["children"]]!,
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "child": child?.toJson(),
    "padding": padding?.toJson(),
    "gridDelegate": gridDelegate?.toJson(),
    "scrollDirection": fluffyScrollDirectionValues.reverse[scrollDirection],
    "shrinkWrap": shrinkWrap,
    "children": childrenValues.reverse[children],
  };
}

class StickyChild {
  TestimonialTemplateType? type;
  StickyArgs? args;

  StickyChild({
    this.type,
    this.args,
  });

  factory StickyChild.fromRawJson(String str) => StickyChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyChild.fromJson(Map<String, dynamic> json) => StickyChild(
    type: testimonialTemplateTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : StickyArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": testimonialTemplateTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class StickyArgs {
  PurpleScrollDirection? scrollDirection;
  bool? shrinkWrap;
  String? children;
  int? height;
  IndigoChild? child;
  On? onLongPress;
  On? onPressed;
  PurpleStyle? style;

  StickyArgs({
    this.scrollDirection,
    this.shrinkWrap,
    this.children,
    this.height,
    this.child,
    this.onLongPress,
    this.onPressed,
    this.style,
  });

  factory StickyArgs.fromRawJson(String str) => StickyArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyArgs.fromJson(Map<String, dynamic> json) => StickyArgs(
    scrollDirection: purpleScrollDirectionValues.map[json["scrollDirection"]]!,
    shrinkWrap: json["shrinkWrap"],
    children: json["children"],
    height: json["height"],
    child: json["child"] == null ? null : IndigoChild.fromJson(json["child"]),
    onLongPress: onValues.map[json["onLongPress"]]!,
    onPressed: onValues.map[json["onPressed"]]!,
    style: json["style"] == null ? null : PurpleStyle.fromJson(json["style"]),
  );

  Map<String, dynamic> toJson() => {
    "scrollDirection": purpleScrollDirectionValues.reverse[scrollDirection],
    "shrinkWrap": shrinkWrap,
    "children": children,
    "height": height,
    "child": child?.toJson(),
    "onLongPress": onValues.reverse[onLongPress],
    "onPressed": onValues.reverse[onPressed],
    "style": style?.toJson(),
  };
}

class IndigoChild {
  PurpleType? type;
  IndigoArgs? args;

  IndigoChild({
    this.type,
    this.args,
  });

  factory IndigoChild.fromRawJson(String str) => IndigoChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoChild.fromJson(Map<String, dynamic> json) => IndigoChild(
    type: purpleTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : IndigoArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": purpleTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class IndigoArgs {
  PurpleScrollDirection? scrollDirection;
  String? children;
  Text? text;

  IndigoArgs({
    this.scrollDirection,
    this.children,
    this.text,
  });

  factory IndigoArgs.fromRawJson(String str) => IndigoArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoArgs.fromJson(Map<String, dynamic> json) => IndigoArgs(
    scrollDirection: purpleScrollDirectionValues.map[json["scrollDirection"]]!,
    children: json["children"],
    text: textValues.map[json["text"]]!,
  );

  Map<String, dynamic> toJson() => {
    "scrollDirection": purpleScrollDirectionValues.reverse[scrollDirection],
    "children": children,
    "text": textValues.reverse[text],
  };
}

enum PurpleScrollDirection {
  HORIZONTAL
}

final purpleScrollDirectionValues = EnumValues({
  "horizontal": PurpleScrollDirection.HORIZONTAL
});

enum Text {
  VIEW_ALL
}

final textValues = EnumValues({
  "View All": Text.VIEW_ALL
});

enum PurpleType {
  LIST_VIEW,
  TEXT
}

final purpleTypeValues = EnumValues({
  "list_view": PurpleType.LIST_VIEW,
  "text": PurpleType.TEXT
});

enum On {
  REDIRECT_PAGE_TO_DESTINATION_COLLECTION_ALL_PRODUCTS
}

final onValues = EnumValues({
  "\u0024{redirectPageToDestination('/collection/all-products')}": On.REDIRECT_PAGE_TO_DESTINATION_COLLECTION_ALL_PRODUCTS
});

class PurpleStyle {
  ForegroundColor? foregroundColor;

  PurpleStyle({
    this.foregroundColor,
  });

  factory PurpleStyle.fromRawJson(String str) => PurpleStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleStyle.fromJson(Map<String, dynamic> json) => PurpleStyle(
    foregroundColor: foregroundColorValues.map[json["foregroundColor"]]!,
  );

  Map<String, dynamic> toJson() => {
    "foregroundColor": foregroundColorValues.reverse[foregroundColor],
  };
}

enum ForegroundColor {
  FFFFFF
}

final foregroundColorValues = EnumValues({
  "#ffffff": ForegroundColor.FFFFFF
});

enum TestimonialTemplateType {
  CONTAINER,
  LIST_VIEW,
  TEXT_BUTTON
}

final testimonialTemplateTypeValues = EnumValues({
  "container": TestimonialTemplateType.CONTAINER,
  "list_view": TestimonialTemplateType.LIST_VIEW,
  "text_button": TestimonialTemplateType.TEXT_BUTTON
});

enum Children {
  FOR_EACH_ENTRIES_VALUES_3_ENTITIES_GRID_TEMPLATE,
  FOR_EACH_ENTRIES_VALUES_4_ENTITIES_GRID_TEMPLATE
}

final childrenValues = EnumValues({
  "\u0024{for_each(entries['values'][3]['entities'], 'grid_template')}": Children.FOR_EACH_ENTRIES_VALUES_3_ENTITIES_GRID_TEMPLATE,
  "\u0024{for_each(entries['values'][4]['entities'], 'grid_template')}": Children.FOR_EACH_ENTRIES_VALUES_4_ENTITIES_GRID_TEMPLATE
});

class GridDelegate {
  int? crossAxisCount;
  double? childAspectRatio;
  int? crossAxisSpacing;
  int? mainAxisSpacing;
  GridDelegateType? type;

  GridDelegate({
    this.crossAxisCount,
    this.childAspectRatio,
    this.crossAxisSpacing,
    this.mainAxisSpacing,
    this.type,
  });

  factory GridDelegate.fromRawJson(String str) => GridDelegate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridDelegate.fromJson(Map<String, dynamic> json) => GridDelegate(
    crossAxisCount: json["crossAxisCount"],
    childAspectRatio: json["childAspectRatio"]?.toDouble(),
    crossAxisSpacing: json["crossAxisSpacing"],
    mainAxisSpacing: json["mainAxisSpacing"],
    type: gridDelegateTypeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "crossAxisCount": crossAxisCount,
    "childAspectRatio": childAspectRatio,
    "crossAxisSpacing": crossAxisSpacing,
    "mainAxisSpacing": mainAxisSpacing,
    "type": gridDelegateTypeValues.reverse[type],
  };
}

enum GridDelegateType {
  FIXED_CROSS_AXIS_COUNT
}

final gridDelegateTypeValues = EnumValues({
  "fixed_cross_axis_count": GridDelegateType.FIXED_CROSS_AXIS_COUNT
});

class PurplePadding {
  int? top;
  int? bottom;

  PurplePadding({
    this.top,
    this.bottom,
  });

  factory PurplePadding.fromRawJson(String str) => PurplePadding.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurplePadding.fromJson(Map<String, dynamic> json) => PurplePadding(
    top: json["top"],
    bottom: json["bottom"],
  );

  Map<String, dynamic> toJson() => {
    "top": top,
    "bottom": bottom,
  };
}

enum FluffyScrollDirection {
  VERTICAL
}

final fluffyScrollDirectionValues = EnumValues({
  "vertical": FluffyScrollDirection.VERTICAL
});

enum CrossAxisAlignmentEnum {
  CENTER,
  CONTAINER,
  GRID_VIEW,
  PADDING
}

final crossAxisAlignmentEnumValues = EnumValues({
  "center": CrossAxisAlignmentEnum.CENTER,
  "container": CrossAxisAlignmentEnum.CONTAINER,
  "grid_view": CrossAxisAlignmentEnum.GRID_VIEW,
  "padding": CrossAxisAlignmentEnum.PADDING
});

class FluffyPadding {
  int? top;
  int? bottom;
  int? left;
  int? right;

  FluffyPadding({
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  factory FluffyPadding.fromRawJson(String str) => FluffyPadding.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyPadding.fromJson(Map<String, dynamic> json) => FluffyPadding(
    top: json["top"],
    bottom: json["bottom"],
    left: json["left"],
    right: json["right"],
  );

  Map<String, dynamic> toJson() => {
    "top": top,
    "bottom": bottom,
    "left": left,
    "right": right,
  };
}

class Values {
  Entries? entries;
  GridTemplate? gridTemplate;
  ContextMediaTemplate? contextMediaTemplate;
  BannerTemplate? bannerTemplate;
  TestimonialTemplate? testimonialTemplate;

  Values({
    this.entries,
    this.gridTemplate,
    this.contextMediaTemplate,
    this.bannerTemplate,
    this.testimonialTemplate,
  });

  factory Values.fromRawJson(String str) => Values.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Values.fromJson(Map<String, dynamic> json) => Values(
    entries: json["entries"] == null ? null : Entries.fromJson(json["entries"]),
    gridTemplate: json["grid_template"] == null ? null : GridTemplate.fromJson(json["grid_template"]),
    contextMediaTemplate: json["context_media_template"] == null ? null : ContextMediaTemplate.fromJson(json["context_media_template"]),
    bannerTemplate: json["banner_template"] == null ? null : BannerTemplate.fromJson(json["banner_template"]),
    testimonialTemplate: json["testimonial_template"] == null ? null : TestimonialTemplate.fromJson(json["testimonial_template"]),
  );

  Map<String, dynamic> toJson() => {
    "entries": entries?.toJson(),
    "grid_template": gridTemplate?.toJson(),
    "context_media_template": contextMediaTemplate?.toJson(),
    "banner_template": bannerTemplate?.toJson(),
    "testimonial_template": testimonialTemplate?.toJson(),
  };
}

class BannerTemplate {
  String? type;
  BannerTemplateArgs? args;

  BannerTemplate({
    this.type,
    this.args,
  });

  factory BannerTemplate.fromRawJson(String str) => BannerTemplate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BannerTemplate.fromJson(Map<String, dynamic> json) => BannerTemplate(
    type: json["type"],
    args: json["args"] == null ? null : BannerTemplateArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class BannerTemplateArgs {
  String? alignment;
  List<IndecentChild>? children;

  BannerTemplateArgs({
    this.alignment,
    this.children,
  });

  factory BannerTemplateArgs.fromRawJson(String str) => BannerTemplateArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BannerTemplateArgs.fromJson(Map<String, dynamic> json) => BannerTemplateArgs(
    alignment: json["alignment"],
    children: json["children"] == null ? [] : List<IndecentChild>.from(json["children"]!.map((x) => IndecentChild.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "alignment": alignment,
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
  };
}

class IndecentChild {
  String? type;
  IndecentArgs? args;

  IndecentChild({
    this.type,
    this.args,
  });

  factory IndecentChild.fromRawJson(String str) => IndecentChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentChild.fromJson(Map<String, dynamic> json) => IndecentChild(
    type: json["type"],
    args: json["args"] == null ? null : IndecentArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class IndecentArgs {
  String? src;
  String? fit;
  TentacledPadding? padding;
  HilariousChild? child;

  IndecentArgs({
    this.src,
    this.fit,
    this.padding,
    this.child,
  });

  factory IndecentArgs.fromRawJson(String str) => IndecentArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentArgs.fromJson(Map<String, dynamic> json) => IndecentArgs(
    src: json["src"],
    fit: json["fit"],
    padding: json["padding"] == null ? null : TentacledPadding.fromJson(json["padding"]),
    child: json["child"] == null ? null : HilariousChild.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "src": src,
    "fit": fit,
    "padding": padding?.toJson(),
    "child": child?.toJson(),
  };
}

class HilariousChild {
  TestimonialTemplateType? type;
  HilariousArgs? args;

  HilariousChild({
    this.type,
    this.args,
  });

  factory HilariousChild.fromRawJson(String str) => HilariousChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HilariousChild.fromJson(Map<String, dynamic> json) => HilariousChild(
    type: testimonialTemplateTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : HilariousArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": testimonialTemplateTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class HilariousArgs {
  String? key;
  String? alignment;
  String? color;
  int? height;
  int? width;
  AmbitiousChild? child;

  HilariousArgs({
    this.key,
    this.alignment,
    this.color,
    this.height,
    this.width,
    this.child,
  });

  factory HilariousArgs.fromRawJson(String str) => HilariousArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HilariousArgs.fromJson(Map<String, dynamic> json) => HilariousArgs(
    key: json["key"],
    alignment: json["alignment"],
    color: json["color"],
    height: json["height"],
    width: json["width"],
    child: json["child"] == null ? null : AmbitiousChild.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "alignment": alignment,
    "color": color,
    "height": height,
    "width": width,
    "child": child?.toJson(),
  };
}

class AmbitiousChild {
  String? type;
  AmbitiousArgs? args;

  AmbitiousChild({
    this.type,
    this.args,
  });

  factory AmbitiousChild.fromRawJson(String str) => AmbitiousChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AmbitiousChild.fromJson(Map<String, dynamic> json) => AmbitiousChild(
    type: json["type"],
    args: json["args"] == null ? null : AmbitiousArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class AmbitiousArgs {
  CrossAxisAlignmentEnum? mainAxisAlignment;
  CrossAxisAlignmentEnum? crossAxisAlignment;
  String? mainAxisSize;
  List<CunningChild>? children;

  AmbitiousArgs({
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.children,
  });

  factory AmbitiousArgs.fromRawJson(String str) => AmbitiousArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AmbitiousArgs.fromJson(Map<String, dynamic> json) => AmbitiousArgs(
    mainAxisAlignment: crossAxisAlignmentEnumValues.map[json["mainAxisAlignment"]]!,
    crossAxisAlignment: crossAxisAlignmentEnumValues.map[json["crossAxisAlignment"]]!,
    mainAxisSize: json["mainAxisSize"],
    children: json["children"] == null ? [] : List<CunningChild>.from(json["children"]!.map((x) => CunningChild.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "mainAxisAlignment": crossAxisAlignmentEnumValues.reverse[mainAxisAlignment],
    "crossAxisAlignment": crossAxisAlignmentEnumValues.reverse[crossAxisAlignment],
    "mainAxisSize": mainAxisSize,
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
  };
}

class CunningChild {
  String? type;
  CunningArgs? args;

  CunningChild({
    this.type,
    this.args,
  });

  factory CunningChild.fromRawJson(String str) => CunningChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CunningChild.fromJson(Map<String, dynamic> json) => CunningChild(
    type: json["type"],
    args: json["args"] == null ? null : CunningArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class CunningArgs {
  String? text;
  FluffyStyle? style;
  int? maxLines;
  String? overflow;
  TentacledPadding? padding;
  MagentaChild? child;

  CunningArgs({
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.padding,
    this.child,
  });

  factory CunningArgs.fromRawJson(String str) => CunningArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CunningArgs.fromJson(Map<String, dynamic> json) => CunningArgs(
    text: json["text"],
    style: json["style"] == null ? null : FluffyStyle.fromJson(json["style"]),
    maxLines: json["maxLines"],
    overflow: json["overflow"],
    padding: json["padding"] == null ? null : TentacledPadding.fromJson(json["padding"]),
    child: json["child"] == null ? null : MagentaChild.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "style": style?.toJson(),
    "maxLines": maxLines,
    "overflow": overflow,
    "padding": padding?.toJson(),
    "child": child?.toJson(),
  };
}

class MagentaChild {
  TestimonialTemplateType? type;
  MagentaArgs? args;

  MagentaChild({
    this.type,
    this.args,
  });

  factory MagentaChild.fromRawJson(String str) => MagentaChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MagentaChild.fromJson(Map<String, dynamic> json) => MagentaChild(
    type: testimonialTemplateTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : MagentaArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": testimonialTemplateTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class MagentaArgs {
  PurpleStyle? style;
  FriskyChild? child;

  MagentaArgs({
    this.style,
    this.child,
  });

  factory MagentaArgs.fromRawJson(String str) => MagentaArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MagentaArgs.fromJson(Map<String, dynamic> json) => MagentaArgs(
    style: json["style"] == null ? null : PurpleStyle.fromJson(json["style"]),
    child: json["child"] == null ? null : FriskyChild.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "style": style?.toJson(),
    "child": child?.toJson(),
  };
}

class FriskyChild {
  PurpleType? type;
  FriskyArgs? args;

  FriskyChild({
    this.type,
    this.args,
  });

  factory FriskyChild.fromRawJson(String str) => FriskyChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FriskyChild.fromJson(Map<String, dynamic> json) => FriskyChild(
    type: purpleTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : FriskyArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": purpleTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class FriskyArgs {
  String? text;

  FriskyArgs({
    this.text,
  });

  factory FriskyArgs.fromRawJson(String str) => FriskyArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FriskyArgs.fromJson(Map<String, dynamic> json) => FriskyArgs(
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
  };
}

class TentacledPadding {
  int? bottom;

  TentacledPadding({
    this.bottom,
  });

  factory TentacledPadding.fromRawJson(String str) => TentacledPadding.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledPadding.fromJson(Map<String, dynamic> json) => TentacledPadding(
    bottom: json["bottom"],
  );

  Map<String, dynamic> toJson() => {
    "bottom": bottom,
  };
}

class FluffyStyle {
  String? color;
  int? fontSize;

  FluffyStyle({
    this.color,
    this.fontSize,
  });

  factory FluffyStyle.fromRawJson(String str) => FluffyStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyStyle.fromJson(Map<String, dynamic> json) => FluffyStyle(
    color: json["color"],
    fontSize: json["fontSize"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "fontSize": fontSize,
  };
}

class ContextMediaTemplate {
  String? type;
  ContextMediaTemplateArgs? args;

  ContextMediaTemplate({
    this.type,
    this.args,
  });

  factory ContextMediaTemplate.fromRawJson(String str) => ContextMediaTemplate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContextMediaTemplate.fromJson(Map<String, dynamic> json) => ContextMediaTemplate(
    type: json["type"],
    args: json["args"] == null ? null : ContextMediaTemplateArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class ContextMediaTemplateArgs {
  List<MischievousChild>? children;

  ContextMediaTemplateArgs({
    this.children,
  });

  factory ContextMediaTemplateArgs.fromRawJson(String str) => ContextMediaTemplateArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContextMediaTemplateArgs.fromJson(Map<String, dynamic> json) => ContextMediaTemplateArgs(
    children: json["children"] == null ? [] : List<MischievousChild>.from(json["children"]!.map((x) => MischievousChild.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
  };
}

class MischievousChild {
  CrossAxisAlignmentEnum? type;
  MischievousArgs? args;

  MischievousChild({
    this.type,
    this.args,
  });

  factory MischievousChild.fromRawJson(String str) => MischievousChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MischievousChild.fromJson(Map<String, dynamic> json) => MischievousChild(
    type: crossAxisAlignmentEnumValues.map[json["type"]]!,
    args: json["args"] == null ? null : MischievousArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": crossAxisAlignmentEnumValues.reverse[type],
    "args": args?.toJson(),
  };
}

class MischievousArgs {
  int? height;
  int? width;
  PurpleDecoration? decoration;
  BraggadociousChild? child;
  StickyPadding? padding;

  MischievousArgs({
    this.height,
    this.width,
    this.decoration,
    this.child,
    this.padding,
  });

  factory MischievousArgs.fromRawJson(String str) => MischievousArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MischievousArgs.fromJson(Map<String, dynamic> json) => MischievousArgs(
    height: json["height"],
    width: json["width"],
    decoration: json["decoration"] == null ? null : PurpleDecoration.fromJson(json["decoration"]),
    child: json["child"] == null ? null : BraggadociousChild.fromJson(json["child"]),
    padding: json["padding"] == null ? null : StickyPadding.fromJson(json["padding"]),
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "width": width,
    "decoration": decoration?.toJson(),
    "child": child?.toJson(),
    "padding": padding?.toJson(),
  };
}

class BraggadociousChild {
  String? type;
  BraggadociousArgs? args;

  BraggadociousChild({
    this.type,
    this.args,
  });

  factory BraggadociousChild.fromRawJson(String str) => BraggadociousChild.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BraggadociousChild.fromJson(Map<String, dynamic> json) => BraggadociousChild(
    type: json["type"],
    args: json["args"] == null ? null : BraggadociousArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class BraggadociousArgs {
  FluffyPadding? padding;
  Child1? child;
  String? text;
  FluffyStyle? style;

  BraggadociousArgs({
    this.padding,
    this.child,
    this.text,
    this.style,
  });

  factory BraggadociousArgs.fromRawJson(String str) => BraggadociousArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BraggadociousArgs.fromJson(Map<String, dynamic> json) => BraggadociousArgs(
    padding: json["padding"] == null ? null : FluffyPadding.fromJson(json["padding"]),
    child: json["child"] == null ? null : Child1.fromJson(json["child"]),
    text: json["text"],
    style: json["style"] == null ? null : FluffyStyle.fromJson(json["style"]),
  );

  Map<String, dynamic> toJson() => {
    "padding": padding?.toJson(),
    "child": child?.toJson(),
    "text": text,
    "style": style?.toJson(),
  };
}

class Child1 {
  String? type;
  Args1? args;

  Child1({
    this.type,
    this.args,
  });

  factory Child1.fromRawJson(String str) => Child1.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child1.fromJson(Map<String, dynamic> json) => Child1(
    type: json["type"],
    args: json["args"] == null ? null : Args1.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args1 {
  BorderRadius? borderRadius;
  Child2? child;

  Args1({
    this.borderRadius,
    this.child,
  });

  factory Args1.fromRawJson(String str) => Args1.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args1.fromJson(Map<String, dynamic> json) => Args1(
    borderRadius: json["borderRadius"] == null ? null : BorderRadius.fromJson(json["borderRadius"]),
    child: json["child"] == null ? null : Child2.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "borderRadius": borderRadius?.toJson(),
    "child": child?.toJson(),
  };
}

class BorderRadius {
  String? type;
  int? radius;

  BorderRadius({
    this.type,
    this.radius,
  });

  factory BorderRadius.fromRawJson(String str) => BorderRadius.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BorderRadius.fromJson(Map<String, dynamic> json) => BorderRadius(
    type: json["type"],
    radius: json["radius"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "radius": radius,
  };
}

class Child2 {
  String? type;
  Args2? args;

  Child2({
    this.type,
    this.args,
  });

  factory Child2.fromRawJson(String str) => Child2.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child2.fromJson(Map<String, dynamic> json) => Child2(
    type: json["type"],
    args: json["args"] == null ? null : Args2.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args2 {
  String? src;
  String? fit;

  Args2({
    this.src,
    this.fit,
  });

  factory Args2.fromRawJson(String str) => Args2.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args2.fromJson(Map<String, dynamic> json) => Args2(
    src: json["src"],
    fit: json["fit"],
  );

  Map<String, dynamic> toJson() => {
    "src": src,
    "fit": fit,
  };
}

class PurpleDecoration {
  String? type;
  BorderRadius? borderRadius;

  PurpleDecoration({
    this.type,
    this.borderRadius,
  });

  factory PurpleDecoration.fromRawJson(String str) => PurpleDecoration.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleDecoration.fromJson(Map<String, dynamic> json) => PurpleDecoration(
    type: json["type"],
    borderRadius: json["borderRadius"] == null ? null : BorderRadius.fromJson(json["borderRadius"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "borderRadius": borderRadius?.toJson(),
  };
}

class StickyPadding {
  int? top;

  StickyPadding({
    this.top,
  });

  factory StickyPadding.fromRawJson(String str) => StickyPadding.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyPadding.fromJson(Map<String, dynamic> json) => StickyPadding(
    top: json["top"],
  );

  Map<String, dynamic> toJson() => {
    "top": top,
  };
}

class Entries {
  List<Value>? values;

  Entries({
    this.values,
  });

  factory Entries.fromRawJson(String str) => Entries.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Entries.fromJson(Map<String, dynamic> json) => Entries(
    values: json["values"] == null ? [] : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x.toJson())),
  };
}

class Value {
  String? shortId;
  String? type;
  String? layout;
  String? title;
  CustomStyle? customStyle;
  List<Entity>? entities;
  String? backgroundImage;
  TemplateSettings? templateSettings;
  ViewAll? viewAll;
  String? subType;
  bool? isPaginated;
  Meta? meta;

  Value({
    this.shortId,
    this.type,
    this.layout,
    this.title,
    this.customStyle,
    this.entities,
    this.backgroundImage,
    this.templateSettings,
    this.viewAll,
    this.subType,
    this.isPaginated,
    this.meta,
  });

  factory Value.fromRawJson(String str) => Value.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    shortId: json["short_id"],
    type: json["type"],
    layout: json["layout"],
    title: json["title"],
    customStyle: json["custom_style"] == null ? null : CustomStyle.fromJson(json["custom_style"]),
    entities: json["entities"] == null ? [] : List<Entity>.from(json["entities"]!.map((x) => Entity.fromJson(x))),
    backgroundImage: json["background_image"],
    templateSettings: json["template_settings"] == null ? null : TemplateSettings.fromJson(json["template_settings"]),
    viewAll: json["view_all"] == null ? null : ViewAll.fromJson(json["view_all"]),
    subType: json["sub_type"],
    isPaginated: json["is_paginated"],
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "short_id": shortId,
    "type": type,
    "layout": layout,
    "title": title,
    "custom_style": customStyle?.toJson(),
    "entities": entities == null ? [] : List<dynamic>.from(entities!.map((x) => x.toJson())),
    "background_image": backgroundImage,
    "template_settings": templateSettings?.toJson(),
    "view_all": viewAll?.toJson(),
    "sub_type": subType,
    "is_paginated": isPaginated,
    "meta": meta?.toJson(),
  };
}

class CustomStyle {
  String? titleAlignment;
  String? backgroundColor;
  bool? isBackgroundImageRepeat;

  CustomStyle({
    this.titleAlignment,
    this.backgroundColor,
    this.isBackgroundImageRepeat,
  });

  factory CustomStyle.fromRawJson(String str) => CustomStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomStyle.fromJson(Map<String, dynamic> json) => CustomStyle(
    titleAlignment: json["title_alignment"],
    backgroundColor: json["background_color"],
    isBackgroundImageRepeat: json["is_background_image_repeat"],
  );

  Map<String, dynamic> toJson() => {
    "title_alignment": titleAlignment,
    "background_color": backgroundColor,
    "is_background_image_repeat": isBackgroundImageRepeat,
  };
}

class Entity {
  String? title;
  CtaText? ctaText;
  String? srcUrl;
  String? link;
  bool? fitImage;
  String? imageAlignment;
  String? contentAlignment;
  String? type;
  String? name;
  String? rating;
  String? review;
  String? city;
  String? shortId;
  String? reviewDate;
  List<dynamic>? media;
  String? headerBadgeIcon;
  String? effectivePrice;
  String? mrp;
  String? mrpDisplayString;
  bool? isOos;
  String? effectivePriceDisplayString;
  bool? showMrp;
  double? discount;
  String? discountText;
  String? urlSuffix;
  bool? isCustomisationMandatory;
  bool? isCustomisationApplicable;
  String? customisationPageShortId;
  String? stockAlertText;
  bool? isBumperCouponApplicable;
  String? sizeType;
  int? mrpNumeric;
  int? sellingPriceNumeric;
  int? effectivePriceNumeric;

  Entity({
    this.title,
    this.ctaText,
    this.srcUrl,
    this.link,
    this.fitImage,
    this.imageAlignment,
    this.contentAlignment,
    this.type,
    this.name,
    this.rating,
    this.review,
    this.city,
    this.shortId,
    this.reviewDate,
    this.media,
    this.headerBadgeIcon,
    this.effectivePrice,
    this.mrp,
    this.mrpDisplayString,
    this.isOos,
    this.effectivePriceDisplayString,
    this.showMrp,
    this.discount,
    this.discountText,
    this.urlSuffix,
    this.isCustomisationMandatory,
    this.isCustomisationApplicable,
    this.customisationPageShortId,
    this.stockAlertText,
    this.isBumperCouponApplicable,
    this.sizeType,
    this.mrpNumeric,
    this.sellingPriceNumeric,
    this.effectivePriceNumeric,
  });

  factory Entity.fromRawJson(String str) => Entity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Entity.fromJson(Map<String, dynamic> json) => Entity(
    title: json["title"],
    ctaText: ctaTextValues.map[json["cta_text"]]!,
    srcUrl: json["src_url"],
    link: json["link"],
    fitImage: json["fit_image"],
    imageAlignment: json["image_alignment"],
    contentAlignment: json["content_alignment"],
    type: json["type"],
    name: json["name"],
    rating: json["rating"],
    review: json["review"],
    city: json["city"],
    shortId: json["short_id"],
    reviewDate: json["review_date"],
    media: json["media"] == null ? [] : List<dynamic>.from(json["media"]!.map((x) => x)),
    headerBadgeIcon: json["header_badge_icon"],
    effectivePrice: json["effective_price"],
    mrp: json["mrp"],
    mrpDisplayString: json["mrp_display_string"],
    isOos: json["is_oos"],
    effectivePriceDisplayString: json["effective_price_display_string"],
    showMrp: json["show_mrp"],
    discount: json["discount"]?.toDouble(),
    discountText: json["discount_text"],
    urlSuffix: json["url_suffix"],
    isCustomisationMandatory: json["is_customisation_mandatory"],
    isCustomisationApplicable: json["is_customisation_applicable"],
    customisationPageShortId: json["customisation_page_short_id"],
    stockAlertText: json["stock_alert_text"],
    isBumperCouponApplicable: json["is_bumper_coupon_applicable"],
    sizeType: json["size_type"],
    mrpNumeric: json["mrp_numeric"],
    sellingPriceNumeric: json["selling_price_numeric"],
    effectivePriceNumeric: json["effective_price_numeric"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "cta_text": ctaTextValues.reverse[ctaText],
    "src_url": srcUrl,
    "link": link,
    "fit_image": fitImage,
    "image_alignment": imageAlignment,
    "content_alignment": contentAlignment,
    "type": type,
    "name": name,
    "rating": rating,
    "review": review,
    "city": city,
    "short_id": shortId,
    "review_date": reviewDate,
    "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x)),
    "header_badge_icon": headerBadgeIcon,
    "effective_price": effectivePrice,
    "mrp": mrp,
    "mrp_display_string": mrpDisplayString,
    "is_oos": isOos,
    "effective_price_display_string": effectivePriceDisplayString,
    "show_mrp": showMrp,
    "discount": discount,
    "discount_text": discountText,
    "url_suffix": urlSuffix,
    "is_customisation_mandatory": isCustomisationMandatory,
    "is_customisation_applicable": isCustomisationApplicable,
    "customisation_page_short_id": customisationPageShortId,
    "stock_alert_text": stockAlertText,
    "is_bumper_coupon_applicable": isBumperCouponApplicable,
    "size_type": sizeType,
    "mrp_numeric": mrpNumeric,
    "selling_price_numeric": sellingPriceNumeric,
    "effective_price_numeric": effectivePriceNumeric,
  };
}

enum CtaText {
  ADD_TO_BAG,
  EXPLORE_NOW,
  SUBMIT_NOW
}

final ctaTextValues = EnumValues({
  "Add to bag": CtaText.ADD_TO_BAG,
  "Explore Now": CtaText.EXPLORE_NOW,
  "submit now": CtaText.SUBMIT_NOW
});

class Meta {
  int? pageNo;
  bool? hasMore;
  int? totalCount;

  Meta({
    this.pageNo,
    this.hasMore,
    this.totalCount,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    pageNo: json["page_no"],
    hasMore: json["has_more"],
    totalCount: json["total_count"],
  );

  Map<String, dynamic> toJson() => {
    "page_no": pageNo,
    "has_more": hasMore,
    "total_count": totalCount,
  };
}

class TemplateSettings {
  bool? autoplay;
  bool? salesForSameProduct;
  bool? aovEnabled;
  int? bestSellerDaysRange;
  bool? isMandatory;

  TemplateSettings({
    this.autoplay,
    this.salesForSameProduct,
    this.aovEnabled,
    this.bestSellerDaysRange,
    this.isMandatory,
  });

  factory TemplateSettings.fromRawJson(String str) => TemplateSettings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TemplateSettings.fromJson(Map<String, dynamic> json) => TemplateSettings(
    autoplay: json["autoplay"],
    salesForSameProduct: json["sales_for_same_product"],
    aovEnabled: json["aov_enabled"],
    bestSellerDaysRange: json["best_seller_days_range"],
    isMandatory: json["is_mandatory"],
  );

  Map<String, dynamic> toJson() => {
    "autoplay": autoplay,
    "sales_for_same_product": salesForSameProduct,
    "aov_enabled": aovEnabled,
    "best_seller_days_range": bestSellerDaysRange,
    "is_mandatory": isMandatory,
  };
}

class ViewAll {
  Text? text;
  String? link;

  ViewAll({
    this.text,
    this.link,
  });

  factory ViewAll.fromRawJson(String str) => ViewAll.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewAll.fromJson(Map<String, dynamic> json) => ViewAll(
    text: textValues.map[json["text"]]!,
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "text": textValues.reverse[text],
    "link": link,
  };
}

class GridTemplate {
  String? type;
  GridTemplateArgs? args;

  GridTemplate({
    this.type,
    this.args,
  });

  factory GridTemplate.fromRawJson(String str) => GridTemplate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridTemplate.fromJson(Map<String, dynamic> json) => GridTemplate(
    type: json["type"],
    args: json["args"] == null ? null : GridTemplateArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class GridTemplateArgs {
  String? crossAxisAlignment;
  List<Child3>? children;

  GridTemplateArgs({
    this.crossAxisAlignment,
    this.children,
  });

  factory GridTemplateArgs.fromRawJson(String str) => GridTemplateArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridTemplateArgs.fromJson(Map<String, dynamic> json) => GridTemplateArgs(
    crossAxisAlignment: json["crossAxisAlignment"],
    children: json["children"] == null ? [] : List<Child3>.from(json["children"]!.map((x) => Child3.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "crossAxisAlignment": crossAxisAlignment,
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
  };
}

class Child3 {
  String? type;
  Args3? args;

  Child3({
    this.type,
    this.args,
  });

  factory Child3.fromRawJson(String str) => Child3.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child3.fromJson(Map<String, dynamic> json) => Child3(
    type: json["type"],
    args: json["args"] == null ? null : Args3.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args3 {
  Child4? child;
  PurplePadding? padding;

  Args3({
    this.child,
    this.padding,
  });

  factory Args3.fromRawJson(String str) => Args3.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args3.fromJson(Map<String, dynamic> json) => Args3(
    child: json["child"] == null ? null : Child4.fromJson(json["child"]),
    padding: json["padding"] == null ? null : PurplePadding.fromJson(json["padding"]),
  );

  Map<String, dynamic> toJson() => {
    "child": child?.toJson(),
    "padding": padding?.toJson(),
  };
}

class Child4 {
  String? type;
  Args4? args;

  Child4({
    this.type,
    this.args,
  });

  factory Child4.fromRawJson(String str) => Child4.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child4.fromJson(Map<String, dynamic> json) => Child4(
    type: json["type"],
    args: json["args"] == null ? null : Args4.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args4 {
  int? height;
  int? width;
  Child5? child;
  List<Child6>? children;
  String? onLongPress;
  String? onPressed;
  PurpleStyle? style;

  Args4({
    this.height,
    this.width,
    this.child,
    this.children,
    this.onLongPress,
    this.onPressed,
    this.style,
  });

  factory Args4.fromRawJson(String str) => Args4.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args4.fromJson(Map<String, dynamic> json) => Args4(
    height: json["height"],
    width: json["width"],
    child: json["child"] == null ? null : Child5.fromJson(json["child"]),
    children: json["children"] == null ? [] : List<Child6>.from(json["children"]!.map((x) => Child6.fromJson(x))),
    onLongPress: json["onLongPress"],
    onPressed: json["onPressed"],
    style: json["style"] == null ? null : PurpleStyle.fromJson(json["style"]),
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "width": width,
    "child": child?.toJson(),
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
    "onLongPress": onLongPress,
    "onPressed": onPressed,
    "style": style?.toJson(),
  };
}

class Child5 {
  String? type;
  Args5? args;

  Child5({
    this.type,
    this.args,
  });

  factory Child5.fromRawJson(String str) => Child5.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child5.fromJson(Map<String, dynamic> json) => Child5(
    type: json["type"],
    args: json["args"] == null ? null : Args5.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args5 {
  String? onTap;
  Child2? child;
  String? text;
  FluffyStyle? style;
  int? maxLines;
  String? overflow;

  Args5({
    this.onTap,
    this.child,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
  });

  factory Args5.fromRawJson(String str) => Args5.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args5.fromJson(Map<String, dynamic> json) => Args5(
    onTap: json["onTap"],
    child: json["child"] == null ? null : Child2.fromJson(json["child"]),
    text: json["text"],
    style: json["style"] == null ? null : FluffyStyle.fromJson(json["style"]),
    maxLines: json["maxLines"],
    overflow: json["overflow"],
  );

  Map<String, dynamic> toJson() => {
    "onTap": onTap,
    "child": child?.toJson(),
    "text": text,
    "style": style?.toJson(),
    "maxLines": maxLines,
    "overflow": overflow,
  };
}

class Child6 {
  PurpleType? type;
  Args6? args;

  Child6({
    this.type,
    this.args,
  });

  factory Child6.fromRawJson(String str) => Child6.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child6.fromJson(Map<String, dynamic> json) => Child6(
    type: purpleTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : Args6.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": purpleTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class Args6 {
  String? text;
  TentacledStyle? style;

  Args6({
    this.text,
    this.style,
  });

  factory Args6.fromRawJson(String str) => Args6.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args6.fromJson(Map<String, dynamic> json) => Args6(
    text: json["text"],
    style: json["style"] == null ? null : TentacledStyle.fromJson(json["style"]),
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "style": style?.toJson(),
  };
}

class TentacledStyle {
  String? color;
  int? fontSize;
  double? opacity;
  String? decoration;
  String? decorationColor;
  double? decorationThickness;

  TentacledStyle({
    this.color,
    this.fontSize,
    this.opacity,
    this.decoration,
    this.decorationColor,
    this.decorationThickness,
  });

  factory TentacledStyle.fromRawJson(String str) => TentacledStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledStyle.fromJson(Map<String, dynamic> json) => TentacledStyle(
    color: json["color"],
    fontSize: json["fontSize"],
    opacity: json["opacity"]?.toDouble(),
    decoration: json["decoration"],
    decorationColor: json["decorationColor"],
    decorationThickness: json["decorationThickness"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "fontSize": fontSize,
    "opacity": opacity,
    "decoration": decoration,
    "decorationColor": decorationColor,
    "decorationThickness": decorationThickness,
  };
}

class TestimonialTemplate {
  TestimonialTemplateType? type;
  TestimonialTemplateArgs? args;

  TestimonialTemplate({
    this.type,
    this.args,
  });

  factory TestimonialTemplate.fromRawJson(String str) => TestimonialTemplate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TestimonialTemplate.fromJson(Map<String, dynamic> json) => TestimonialTemplate(
    type: testimonialTemplateTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : TestimonialTemplateArgs.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": testimonialTemplateTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class TestimonialTemplateArgs {
  int? width;
  int? height;
  FluffyDecoration? decoration;
  FluffyPadding? padding;
  Child7? child;

  TestimonialTemplateArgs({
    this.width,
    this.height,
    this.decoration,
    this.padding,
    this.child,
  });

  factory TestimonialTemplateArgs.fromRawJson(String str) => TestimonialTemplateArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TestimonialTemplateArgs.fromJson(Map<String, dynamic> json) => TestimonialTemplateArgs(
    width: json["width"],
    height: json["height"],
    decoration: json["decoration"] == null ? null : FluffyDecoration.fromJson(json["decoration"]),
    padding: json["padding"] == null ? null : FluffyPadding.fromJson(json["padding"]),
    child: json["child"] == null ? null : Child7.fromJson(json["child"]),
  );

  Map<String, dynamic> toJson() => {
    "width": width,
    "height": height,
    "decoration": decoration?.toJson(),
    "padding": padding?.toJson(),
    "child": child?.toJson(),
  };
}

class Child7 {
  String? type;
  Args7? args;

  Child7({
    this.type,
    this.args,
  });

  factory Child7.fromRawJson(String str) => Child7.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child7.fromJson(Map<String, dynamic> json) => Child7(
    type: json["type"],
    args: json["args"] == null ? null : Args7.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args7 {
  String? crossAxisAlignment;
  List<Child8>? children;

  Args7({
    this.crossAxisAlignment,
    this.children,
  });

  factory Args7.fromRawJson(String str) => Args7.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args7.fromJson(Map<String, dynamic> json) => Args7(
    crossAxisAlignment: json["crossAxisAlignment"],
    children: json["children"] == null ? [] : List<Child8>.from(json["children"]!.map((x) => Child8.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "crossAxisAlignment": crossAxisAlignment,
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
  };
}

class Child8 {
  String? type;
  Args8? args;

  Child8({
    this.type,
    this.args,
  });

  factory Child8.fromRawJson(String str) => Child8.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child8.fromJson(Map<String, dynamic> json) => Child8(
    type: json["type"],
    args: json["args"] == null ? null : Args8.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "args": args?.toJson(),
  };
}

class Args8 {
  String? text;
  StickyStyle? style;
  List<Child9>? children;
  Icon? icon;
  int? size;

  Args8({
    this.text,
    this.style,
    this.children,
    this.icon,
    this.size,
  });

  factory Args8.fromRawJson(String str) => Args8.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args8.fromJson(Map<String, dynamic> json) => Args8(
    text: json["text"],
    style: json["style"] == null ? null : StickyStyle.fromJson(json["style"]),
    children: json["children"] == null ? [] : List<Child9>.from(json["children"]!.map((x) => Child9.fromJson(x))),
    icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
    size: json["size"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "style": style?.toJson(),
    "children": children == null ? [] : List<dynamic>.from(children!.map((x) => x.toJson())),
    "icon": icon?.toJson(),
    "size": size,
  };
}

class Child9 {
  PurpleType? type;
  Args9? args;

  Child9({
    this.type,
    this.args,
  });

  factory Child9.fromRawJson(String str) => Child9.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child9.fromJson(Map<String, dynamic> json) => Child9(
    type: purpleTypeValues.map[json["type"]]!,
    args: json["args"] == null ? null : Args9.fromJson(json["args"]),
  );

  Map<String, dynamic> toJson() => {
    "type": purpleTypeValues.reverse[type],
    "args": args?.toJson(),
  };
}

class Args9 {
  String? text;
  FluffyStyle? style;

  Args9({
    this.text,
    this.style,
  });

  factory Args9.fromRawJson(String str) => Args9.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args9.fromJson(Map<String, dynamic> json) => Args9(
    text: json["text"],
    style: json["style"] == null ? null : FluffyStyle.fromJson(json["style"]),
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "style": style?.toJson(),
  };
}

class Icon {
  String? codePoint;
  String? fontFamily;

  Icon({
    this.codePoint,
    this.fontFamily,
  });

  factory Icon.fromRawJson(String str) => Icon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
    codePoint: json["codePoint"],
    fontFamily: json["fontFamily"],
  );

  Map<String, dynamic> toJson() => {
    "codePoint": codePoint,
    "fontFamily": fontFamily,
  };
}

class StickyStyle {
  int? fontSize;
  String? fontWeight;
  String? color;
  int? maxLines;

  StickyStyle({
    this.fontSize,
    this.fontWeight,
    this.color,
    this.maxLines,
  });

  factory StickyStyle.fromRawJson(String str) => StickyStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyStyle.fromJson(Map<String, dynamic> json) => StickyStyle(
    fontSize: json["fontSize"],
    fontWeight: json["fontWeight"],
    color: json["color"],
    maxLines: json["maxLines"],
  );

  Map<String, dynamic> toJson() => {
    "fontSize": fontSize,
    "fontWeight": fontWeight,
    "color": color,
    "maxLines": maxLines,
  };
}

class FluffyDecoration {
  Border? border;

  FluffyDecoration({
    this.border,
  });

  factory FluffyDecoration.fromRawJson(String str) => FluffyDecoration.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyDecoration.fromJson(Map<String, dynamic> json) => FluffyDecoration(
    border: json["border"] == null ? null : Border.fromJson(json["border"]),
  );

  Map<String, dynamic> toJson() => {
    "border": border?.toJson(),
  };
}

class Border {
  String? color;
  int? width;
  String? style;
  double? opacity;

  Border({
    this.color,
    this.width,
    this.style,
    this.opacity,
  });

  factory Border.fromRawJson(String str) => Border.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Border.fromJson(Map<String, dynamic> json) => Border(
    color: json["color"],
    width: json["width"],
    style: json["style"],
    opacity: json["opacity"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "width": width,
    "style": style,
    "opacity": opacity,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
