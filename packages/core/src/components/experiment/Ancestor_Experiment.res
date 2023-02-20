type prop<'a> = ExplorationCss.Breakpoints.t<'a>

module Props = {
  open Css_AtomicTypes
  type props<'radius, 'color, 'spacing, 'bsCssGradient> = {
    // declaration:start
    borderRadius?: prop<'radius>,
    borderTLRadius?: prop<'radius>,
    borderTRRadius?: prop<'radius>,
    borderBLRadius?: prop<'radius>,
    borderBRRadius?: prop<'radius>,
    borderStyle?: prop<[BorderStyle.t | Var.t | Cascading.t]>,
    borderColor?: prop<'color>,
    borderWidth?: prop<Length.t>,
    borderRightStyle?: prop<[BorderStyle.t | Var.t | Cascading.t]>,
    borderLeftStyle?: prop<[BorderStyle.t | Var.t | Cascading.t]>,
    borderTopStyle?: prop<[BorderStyle.t | Var.t | Cascading.t]>,
    borderBottomStyle?: prop<[BorderStyle.t | Var.t | Cascading.t]>,
    borderRightColor?: prop<'color>,
    borderLeftColor?: prop<'color>,
    borderTopColor?: prop<'color>,
    borderBottomColor?: prop<'color>,
    borderRightWidth?: prop<Length.t>,
    borderLeftWidth?: prop<Length.t>,
    borderTopWidth?: prop<Length.t>,
    borderBottomWidth?: prop<Length.t>,
    border?: prop<(Length.t, [BorderStyle.t | Var.t | Cascading.t], 'color)>,
    borderRight?: prop<(Length.t, [BorderStyle.t | Var.t | Cascading.t], 'color)>,
    borderLeft?: prop<(Length.t, [BorderStyle.t | Var.t | Cascading.t], 'color)>,
    borderTop?: prop<(Length.t, [BorderStyle.t | Var.t | Cascading.t], 'color)>,
    borderBottom?: prop<(Length.t, [BorderStyle.t | Var.t | Cascading.t], 'color)>,
    bgColor?: prop<'color>,
    bgSize?: prop<[#size(Length.t, Length.t) | #auto | #cover | #contain]>,
    bgPosition?: prop<
      [
        | BackgroundPosition.t
        | #hv([BackgroundPosition.X.t | Length.t], [BackgroundPosition.Y.t | Length.t])
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    bgImage?: prop<[BackgroundImage.t | Url.t | Gradient.t<'bsCssGradient>]>,
    color?: prop<'color>,
    display?: prop<
      [
        | DisplayOutside.t
        | DisplayInside.t
        | DisplayListItem.t
        | DisplayInternal.t
        | DisplayBox.t
        | DisplayLegacy.t
        | Var.t
        | Cascading.t
      ],
    >,
    justifyContent?: prop<
      [
        | PositionalAlignment.t
        | NormalAlignment.t
        | DistributedAlignment.t
        | Var.t
        | Cascading.t
      ],
    >,
    flexDirection?: prop<[FlexDirection.t | Var.t | Cascading.t]>,
    alignItems?: prop<
      [
        | AlignItems.t
        | PositionalAlignment.t
        | BaselineAlignment.t
        | Var.t
        | Cascading.t
      ],
    >,
    flexBasis?: prop<[FlexBasis.t | Percentage.t | Length.t]>,
    flexWrap?: prop<[FlexWrap.t | Var.t | Cascading.t]>,
    flexGrow?: prop<float>,
    alignContent?: prop<
      [
        | AlignContent.t
        | NormalAlignment.t
        | BaselineAlignment.t
        | DistributedAlignment.t
        | Var.t
        | Cascading.t
      ],
    >,
    alignSelf?: prop<
      [
        | AlignSelf.t
        | PositionalAlignment.t
        | BaselineAlignment.t
        | Var.t
        | Cascading.t
      ],
    >,
    justifySelf?: prop<
      [
        | JustifySelf.t
        | PositionalAlignment.t
        | BaselineAlignment.t
        | Var.t
        | Cascading.t
      ],
    >,
    flexFlow?: prop<float>, // FIXME: not supported by bs-css (shorthand for flexDirection + flexWrap)
    gap?: prop<'spacing>,
    p?: prop<'spacing>,
    px?: prop<'spacing>,
    py?: prop<'spacing>,
    pt?: prop<'spacing>,
    pb?: prop<'spacing>,
    pl?: prop<'spacing>,
    pr?: prop<'spacing>,
    m?: prop<'spacing>,
    mx?: prop<'spacing>,
    my?: prop<'spacing>,
    mt?: prop<'spacing>,
    mb?: prop<'spacing>,
    ml?: prop<'spacing>,
    mr?: prop<'spacing>,
    textAlign?: prop<[TextAlign.t | Var.t | Cascading.t]>,
    fontFamily?: prop<[FontFamilyName.t | Var.t | Cascading.t]>,
    fontWeight?: prop<[FontWeight.t | Var.t | Cascading.t]>,
    fontSize?: prop<[Length.t | Var.t | Cascading.t]>,
    letterSpacing?: prop<
      [
        | LetterSpacing.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    lineHeight?: prop<[LineHeight.t | Length.t | Var.t | Cascading.t]>,
    width?: prop<
      [
        | Width.t
        | Percentage.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    height?: prop<
      [
        | Height.t
        | Percentage.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    minW?: prop<
      [
        | Width.t
        | MinWidth.t
        | Percentage.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    minH?: prop<
      [
        | Height.t
        | MinHeight.t
        | Percentage.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    maxW?: prop<
      [
        | Width.t
        | MaxWidth.t
        | Percentage.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    maxH?: prop<
      [
        | Height.t
        | MaxHeight.t
        | Percentage.t
        | Length.t
        | Var.t
        | Cascading.t
      ],
    >,
    position?: prop<[Position.t | Var.t | Cascading.t]>,
    top?: prop<[#auto | Length.t | Var.t | Cascading.t]>,
    bottom?: prop<[#auto | Length.t | Var.t | Cascading.t]>,
    left?: prop<[#auto | Length.t | Var.t | Cascading.t]>,
    right?: prop<[#auto | Length.t | Var.t | Cascading.t]>,
    zIndex?: prop<int>,
    //--------------------------------------------------------------------------------
    tag?: Ancestor_React.tags,
    children?: React.element,
    /*
    ~boxSizing=?,
    ~overflow=?,
    ~overflowX=?,
    ~overflowY=?,
    ~cursor=?,
    ~visibility=?,
    ~listStyleType=?,
    ~listStylePosition=?,
    ~listStyleImage=?,
    ~listStyle=?,
    ~outlineStyle=?,
    ~outline=?,
    ~textDecorationStyle=?,
    ~textDecorationLine=?,
    ~textDecoration=?,
    ~transform=?,
    ~_hover=?,
    ~_focus=?,
    ~_active=?,
    ~_focusWithin=?,
    ~_focusVisible=?,
    ~_disabled=?,
    ~_before=?,
    ~_after=?,
    ~_even=?,
    ~_odd=?,
    ~_first=?,
    ~_last=?,
    ~_notFirst=?,
    ~_notLast=?,
    ~transition=?,
    ~transitionProperty=?,
    ~transitionDelay=?,
    ~transitionDuration=?,
    ~transitionTimingFunction=?,
    ~transitions=?,
    // declaration:end
    // Base props
    ~tag: Ancestor_React.tags=#div,
    // React props
    ~innerRef=?,
    ~dangerouslySetInnerHTML=?,
    // DOM Props
    ~className="",
    ~children=?,
    ~id=?,
    ~onClick=?,
    ~onSubmit=?,
    ~onChange=?,
    ~alt=?,
    ~src=?,
    ~ariaDetails=?,
    ~ariaDisabled=?,
    ~ariaHidden=?,
    ~ariaKeyshortcuts=?,
    ~ariaLabel=?,
    ~ariaRoledescription=?,
    ~ariaExpanded=?,
    ~ariaLevel=?,
    ~ariaModal=?,
    ~ariaMultiline=?,
    ~ariaMultiselectable=?,
    ~ariaPlaceholder=?,
    ~ariaReadonly=?,
    ~ariaRequired=?,
    ~ariaSelected=?,
    ~ariaSort=?,
    ~ariaValuemax=?,
    ~ariaValuemin=?,
    ~ariaValuenow=?,
    ~ariaValuetext=?,
    ~ariaAtomic=?,
    ~ariaBusy=?,
    ~ariaRelevant=?,
    ~ariaGrabbed=?,
    ~ariaActivedescendant=?,
    ~ariaColcount=?,
    ~ariaColindex=?,
    ~ariaColspan=?,
    ~ariaControls=?,
    ~ariaDescribedby=?,
    ~ariaErrormessage=?,
    ~ariaFlowto=?,
    ~ariaLabelledby=?,
    ~ariaOwns=?,
    ~ariaPosinset=?,
    ~ariaRowcount=?,
    ~ariaRowindex=?,
    ~ariaRowspan=?,
    ~ariaSetsize=?,
    ~defaultChecked=?,
    ~defaultValue=?,
    ~accessKey=?,
    ~contentEditable=?,
    ~contextMenu=?,
    ~lang=?,
    ~role=?,
    ~style=?,
    ~spellCheck=?,
    ~tabIndex=?,
    ~title=?,
    ~itemID=?,
    ~itemProp=?,
    ~itemRef=?,
    ~itemScope=?,
    ~itemType=?,
    ~accept=?,
    ~acceptCharset=?,
    ~action=?,
    ~allowFullScreen=?,
    ~async=?,
    ~autoComplete=?,
    ~autoCapitalize=?,
    ~autoFocus=?,
    ~autoPlay=?,
    ~challenge=?,
    ~charSet=?,
    ~checked=?,
    ~cite=?,
    ~crossOrigin=?,
    ~cols=?,
    ~colSpan=?,
    ~content=?,
    ~controls=?,
    ~coords=?,
    ~data=?,
    ~dateTime=?,
    ~default=?,
    ~defer=?,
    ~disabled=?,
    ~download=?,
    ~encType=?,
    ~form=?,
    ~formAction=?,
    ~formTarget=?,
    ~formMethod=?,
    ~headers=?,
    ~high=?,
    ~href=?,
    ~hrefLang=?,
    ~htmlFor=?,
    ~httpEquiv=?,
    ~icon=?,
    ~inputMode=?,
    ~integrity=?,
    ~keyType=?,
    ~kind=?,
    ~label=?,
    ~list=?,
    ~loop=?,
    ~low=?,
    ~manifest=?,
    ~max=?,
    ~maxLength=?,
    ~media=?,
    ~mediaGroup=?,
    ~method=?,
    ~min=?,
    ~minLength=?,
    ~multiple=?,
    ~muted=?,
    ~name=?,
    ~nonce=?,
    ~noValidate=?,
    ~open_=?,
    ~optimum=?,
    ~pattern=?,
    ~placeholder=?,
    ~playsInline=?,
    ~poster=?,
    ~preload=?,
    ~radioGroup=?,
    ~readOnly=?,
    ~rel=?,
    ~required=?,
    ~reversed=?,
    ~rows=?,
    ~rowSpan=?,
    ~sandbox=?,
    ~scope=?,
    ~scoped=?,
    ~scrolling=?,
    ~selected=?,
    ~shape=?,
    ~size=?,
    ~sizes=?,
    ~span=?,
    ~srcDoc=?,
    ~srcLang=?,
    ~srcSet=?,
    ~start=?,
    ~step=?,
    ~summary=?,
    ~target=?,
    ~type_=?,
    ~useMap=?,
    ~value=?,
    ~wrap=?,
    ~onCopy=?,
    ~onCut=?,
    ~onPaste=?,
    ~onCompositionEnd=?,
    ~onCompositionStart=?,
    ~onCompositionUpdate=?,
    ~onKeyDown=?,
    ~onKeyPress=?,
    ~onKeyUp=?,
    ~onFocus=?,
    ~onBlur=?,
    ~onInput=?,
    ~onInvalid=?,
    ~onContextMenu=?,
    ~onDoubleClick=?,
    ~onDrag=?,
    ~onDragEnd=?,
    ~onDragEnter=?,
    ~onDragExit=?,
    ~onDragLeave=?,
    ~onDragOver=?,
    ~onDragStart=?,
    ~onDrop=?,
    ~onMouseDown=?,
    ~onMouseEnter=?,
    ~onMouseLeave=?,
    ~onMouseMove=?,
    ~onMouseOut=?,
    ~onMouseOver=?,
    ~onMouseUp=?,
    ~onSelect=?,
    ~onTouchCancel=?,
    ~onTouchEnd=?,
    ~onTouchMove=?,
    ~onTouchStart=?,
    ~onPointerOver=?,
    ~onPointerEnter=?,
    ~onPointerDown=?,
    ~onPointerMove=?,
    ~onPointerUp=?,
    ~onPointerCancel=?,
    ~onPointerOut=?,
    ~onPointerLeave=?,
    ~onGotPointerCapture=?,
    ~onLostPointerCapture=?,
    ~onScroll=?,
    ~onWheel=?,
    ~onAbort=?,
    ~onCanPlay=?,
    ~onCanPlayThrough=?,
    ~onDurationChange=?,
    ~onEmptied=?,
    ~onEnded=?,
    ~onError=?,
    ~onLoadedData=?,
    ~onLoadedMetadata=?,
    ~onLoadStart=?,
    ~onPause=?,
    ~onPlay=?,
    ~onPlaying=?,
    ~onProgress=?,
    ~onRateChange=?,
    ~onSeeked=?,
    ~onSeeking=?,
    ~onStalled=?,
    ~onSuspend=?,
    ~onTimeUpdate=?,
    ~onVolumeChange=?,
    ~onWaiting=?,
    ~onLoad=?,
    ~onAnimationStart=?,
    ~onAnimationEnd=?,
    ~onAnimationIteration=?,
    ~onTransitionEnd=?,
 */
  }
}
include Props

module Rules: {
  type t

  let make: unit => t
  let makeFromProps: (
    props<'radius, 'color, 'spacing, 'bsCssGradient>,
    'radius => Css_AtomicTypes.Length.t,
    'color => Css_AtomicTypes.Color.t,
    'spacing => Css_AtomicTypes.Length.t,
  ) => t
  let add: (t, option<ExplorationCss.Breakpoints.t<'a>>, 'a => Css_Js_Core.rule) => t
  let toCss: (t, ExplorationCss.Breakpoints.definitions) => array<Css_Js_Core.rule>
} = {
  type t = array<ExplorationCss.Breakpoints.t<Css_Js_Core.rule>>

  let make = () => []

  let add = (arr, x, toCss) => {
    x->Belt.Option.mapWithDefaultU((), (. x) =>
      arr->Belt.Array.push(x->ExplorationCss.Breakpoints.map(toCss))
    )
    arr
  }

  let makeFromProps = (props, radiusToCss, colorToCss, spacingToCss) => {
    make()
    ->add(props.borderRadius, r => r->radiusToCss->Css_Js_Core.borderRadius)
    ->add(props.borderTLRadius, r => r->radiusToCss->Css_Js_Core.borderTopLeftRadius)
    ->add(props.borderTRRadius, r => r->radiusToCss->Css_Js_Core.borderTopRightRadius)
    ->add(props.borderBLRadius, r => r->radiusToCss->Css_Js_Core.borderBottomLeftRadius)
    ->add(props.borderBRRadius, r => r->radiusToCss->Css_Js_Core.borderBottomRightRadius)
    ->add(props.borderColor, c => c->colorToCss->Css_Js_Core.borderColor)
    ->add(props.borderStyle, Css_Js_Core.borderStyle)
    ->add(props.borderWidth, Css_Js_Core.borderWidth)
    ->add(props.borderRightStyle, Css_Js_Core.borderRightStyle)
    ->add(props.borderLeftStyle, Css_Js_Core.borderLeftStyle)
    ->add(props.borderTopStyle, Css_Js_Core.borderTopStyle)
    ->add(props.borderBottomStyle, Css_Js_Core.borderBottomStyle)
    ->add(props.borderRightColor, c => c->colorToCss->Css_Js_Core.borderRightColor)
    ->add(props.borderLeftColor, c => c->colorToCss->Css_Js_Core.borderLeftColor)
    ->add(props.borderTopColor, c => c->colorToCss->Css_Js_Core.borderTopColor)
    ->add(props.borderBottomColor, c => c->colorToCss->Css_Js_Core.borderBottomColor)
    ->add(props.borderRightWidth, Css_Js_Core.borderRightWidth)
    ->add(props.borderLeftWidth, Css_Js_Core.borderLeftWidth)
    ->add(props.borderTopWidth, Css_Js_Core.borderTopWidth)
    ->add(props.borderBottomWidth, Css_Js_Core.borderBottomWidth)
    ->add(props.border, ((width, style, color)) =>
      Css_Js_Core.border(width, style, color->colorToCss)
    )
    ->add(props.borderRight, ((width, style, color)) =>
      Css_Js_Core.borderRight(width, style, color->colorToCss)
    )
    ->add(props.borderLeft, ((width, style, color)) =>
      Css_Js_Core.borderLeft(width, style, color->colorToCss)
    )
    ->add(props.borderTop, ((width, style, color)) =>
      Css_Js_Core.borderTop(width, style, color->colorToCss)
    )
    ->add(props.borderBottom, ((width, style, color)) =>
      Css_Js_Core.borderBottom(width, style, color->colorToCss)
    )
    ->add(props.bgColor, c => c->colorToCss->Css_Js_Core.backgroundColor)
    ->add(props.bgSize, Css_Js_Core.backgroundSize)
    ->add(props.bgPosition, Css_Js_Core.backgroundPosition)
    ->add(props.bgImage, Css_Js_Core.backgroundImage)
    ->add(props.color, c => c->colorToCss->Css_Js_Core.color)
    ->add(props.display, Css_Js_Core.display)
    ->add(props.justifyContent, Css_Js_Core.justifyContent)
    ->add(props.flexDirection, Css_Js_Core.flexDirection)
    ->add(props.alignItems, Css_Js_Core.alignItems)
    ->add(props.flexBasis, Css_Js_Core.flexBasis)
    ->add(props.flexGrow, Css_Js_Core.flexGrow)
    ->add(props.alignContent, Css_Js_Core.alignContent)
    ->add(props.justifySelf, Css_Js_Core.justifySelf)
    /* FIXME: not supported by bs-css (shorthand for flexDirection + flexWrap)
    ->add(props.flexFlow, Css_Js_Core.flexFlow)
 */
    ->add(props.gap, g => g->spacingToCss->Css_Js_Core.gap)
    ->add(props.p, p => p->spacingToCss->Css_Js_Core.padding)
    ->add(props.px, px => px->spacingToCss->Css_Js_Core.paddingLeft)
    ->add(props.px, px => px->spacingToCss->Css_Js_Core.paddingRight)
    ->add(props.py, py => py->spacingToCss->Css_Js_Core.paddingTop)
    ->add(props.py, py => py->spacingToCss->Css_Js_Core.paddingBottom)
    ->add(props.pt, pt => pt->spacingToCss->Css_Js_Core.paddingTop)
    ->add(props.pb, pb => pb->spacingToCss->Css_Js_Core.paddingBottom)
    ->add(props.pl, pl => pl->spacingToCss->Css_Js_Core.paddingLeft)
    ->add(props.pr, pr => pr->spacingToCss->Css_Js_Core.paddingRight)
    ->add(props.m, m => m->spacingToCss->Css_Js_Core.margin)
    ->add(props.mx, mx => mx->spacingToCss->Css_Js_Core.marginLeft)
    ->add(props.mx, mx => mx->spacingToCss->Css_Js_Core.marginRight)
    ->add(props.my, my => my->spacingToCss->Css_Js_Core.marginTop)
    ->add(props.my, my => my->spacingToCss->Css_Js_Core.marginBottom)
    ->add(props.mt, mt => mt->spacingToCss->Css_Js_Core.marginTop)
    ->add(props.mb, mb => mb->spacingToCss->Css_Js_Core.marginBottom)
    ->add(props.ml, ml => ml->spacingToCss->Css_Js_Core.marginLeft)
    ->add(props.mr, mr => mr->spacingToCss->Css_Js_Core.marginRight)
    ->add(props.fontFamily, Css_Js_Core.fontFamily)
    ->add(props.fontWeight, Css_Js_Core.fontWeight)
    ->add(props.fontSize, Css_Js_Core.fontSize)
    ->add(props.letterSpacing, Css_Js_Core.letterSpacing)
    ->add(props.lineHeight, Css_Js_Core.lineHeight)
    ->add(props.width, Css_Js_Core.width)
    ->add(props.height, Css_Js_Core.height)
    ->add(props.minW, Css_Js_Core.minWidth)
    ->add(props.minH, Css_Js_Core.minHeight)
    ->add(props.maxW, Css_Js_Core.maxWidth)
    ->add(props.maxH, Css_Js_Core.maxHeight)
  }

  let toCss = (rules, breakpointDefinitions) =>
    rules->ExplorationCss.Breakpoints.toMediaQueries(breakpointDefinitions)
}

let make = (
  breakpointDefinitions: ExplorationCss.Breakpoints.definitions,
  radiusToCss: 'radius => Css_AtomicTypes.Length.t,
  colorToCss: 'color => Css_AtomicTypes.Color.t,
  spacingToCss: 'spacing => Css_AtomicTypes.Length.t,
  style: (. array<Css_Js_Core.rule>) => 'cssStyleEncoding,
  props: props<'radius, 'color, 'spacing, 'bsCssGradient>,
) => {
  let componentClassName =
    Rules.makeFromProps(props, radiusToCss, colorToCss, spacingToCss)
    ->Rules.toCss(breakpointDefinitions)
    ->style(. _)

  Ancestor_React.createElement(
    props.tag->Belt.Option.getWithDefault(#div),
    {
      className: componentClassName,
      /*
        ?id,
        ?onClick,
        ?onSubmit,
        ?onChange,
        ?src,
        ?alt,
        ?dangerouslySetInnerHTML,
        ref: ?innerRef,
        ?ariaDetails,
        ?ariaDisabled,
        ?ariaHidden,
        ?ariaKeyshortcuts,
        ?ariaLabel,
        ?ariaRoledescription,
        ?ariaExpanded,
        ?ariaLevel,
        ?ariaModal,
        ?ariaMultiline,
        ?ariaMultiselectable,
        ?ariaPlaceholder,
        ?ariaReadonly,
        ?ariaRequired,
        ?ariaSelected,
        ?ariaSort,
        ?ariaValuemax,
        ?ariaValuemin,
        ?ariaValuenow,
        ?ariaValuetext,
        ?ariaAtomic,
        ?ariaBusy,
        ?ariaRelevant,
        ?ariaGrabbed,
        ?ariaActivedescendant,
        ?ariaColcount,
        ?ariaColindex,
        ?ariaColspan,
        ?ariaControls,
        ?ariaDescribedby,
        ?ariaErrormessage,
        ?ariaFlowto,
        ?ariaLabelledby,
        ?ariaOwns,
        ?ariaPosinset,
        ?ariaRowcount,
        ?ariaRowindex,
        ?ariaRowspan,
        ?ariaSetsize,
        ?defaultChecked,
        ?defaultValue,
        ?accessKey,
        ?contentEditable,
        ?contextMenu,
        ?lang,
        ?role,
        ?style,
        ?spellCheck,
        ?tabIndex,
        ?title,
        ?itemID,
        ?itemProp,
        ?itemRef,
        ?itemScope,
        ?itemType,
        ?accept,
        ?acceptCharset,
        ?action,
        ?allowFullScreen,
        ?async,
        ?autoComplete,
        ?autoCapitalize,
        ?autoFocus,
        ?autoPlay,
        ?challenge,
        ?charSet,
        ?checked,
        ?cite,
        ?crossOrigin,
        ?cols,
        ?colSpan,
        ?content,
        ?controls,
        ?coords,
        ?data,
        ?dateTime,
        ?default,
        ?defer,
        ?disabled,
        ?download,
        ?encType,
        ?form,
        ?formAction,
        ?formTarget,
        ?formMethod,
        ?headers,
        ?high,
        ?href,
        ?hrefLang,
        ?htmlFor,
        ?httpEquiv,
        ?icon,
        ?inputMode,
        ?integrity,
        ?keyType,
        ?kind,
        ?label,
        ?list,
        ?loop,
        ?low,
        ?manifest,
        ?max,
        ?maxLength,
        ?media,
        ?mediaGroup,
        ?method,
        ?min,
        ?minLength,
        ?multiple,
        ?muted,
        ?name,
        ?nonce,
        ?noValidate,
        ?open_,
        ?optimum,
        ?pattern,
        ?placeholder,
        ?playsInline,
        ?poster,
        ?preload,
        ?radioGroup,
        ?readOnly,
        ?rel,
        ?required,
        ?reversed,
        ?rows,
        ?rowSpan,
        ?sandbox,
        ?scope,
        ?scoped,
        ?scrolling,
        ?selected,
        ?shape,
        ?size,
        ?sizes,
        ?span,
        ?srcDoc,
        ?srcLang,
        ?srcSet,
        ?start,
        ?step,
        ?summary,
        ?target,
        ?type_,
        ?useMap,
        ?value,
        ?wrap,
        ?onCopy,
        ?onCut,
        ?onPaste,
        ?onCompositionEnd,
        ?onCompositionStart,
        ?onCompositionUpdate,
        ?onKeyDown,
        ?onKeyPress,
        ?onKeyUp,
        ?onFocus,
        ?onBlur,
        ?onInput,
        ?onInvalid,
        ?onContextMenu,
        ?onDoubleClick,
        ?onDrag,
        ?onDragEnd,
        ?onDragEnter,
        ?onDragExit,
        ?onDragLeave,
        ?onDragOver,
        ?onDragStart,
        ?onDrop,
        ?onMouseDown,
        ?onMouseEnter,
        ?onMouseLeave,
        ?onMouseMove,
        ?onMouseOut,
        ?onMouseOver,
        ?onMouseUp,
        ?onSelect,
        ?onTouchCancel,
        ?onTouchEnd,
        ?onTouchMove,
        ?onTouchStart,
        ?onPointerOver,
        ?onPointerEnter,
        ?onPointerDown,
        ?onPointerMove,
        ?onPointerUp,
        ?onPointerCancel,
        ?onPointerOut,
        ?onPointerLeave,
        ?onGotPointerCapture,
        ?onLostPointerCapture,
        ?onScroll,
        ?onWheel,
        ?onAbort,
        ?onCanPlay,
        ?onCanPlayThrough,
        ?onDurationChange,
        ?onEmptied,
        ?onEnded,
        ?onError,
        ?onLoadedData,
        ?onLoadedMetadata,
        ?onLoadStart,
        ?onPause,
        ?onPlay,
        ?onPlaying,
        ?onProgress,
        ?onRateChange,
        ?onSeeked,
        ?onSeeking,
        ?onStalled,
        ?onSuspend,
        ?onTimeUpdate,
        ?onVolumeChange,
        ?onWaiting,
        ?onLoad,
        ?onAnimationStart,
        ?onAnimationEnd,
        ?onAnimationIteration,
        ?onTransitionEnd,
 */
    },
    props.children,
  )
}
