open Ancestor_Core

let toFloat = value =>
  switch value {
  | #1 => 1.0
  | #2 => 2.0
  | #3 => 3.0
  | #4 => 4.0
  | #5 => 5.0
  | #6 => 6.0
  | #7 => 7.0
  | #8 => 8.0
  | #9 => 9.0
  | #10 => 10.0
  | #11 => 11.0
  | #12 => 12.0
  | _ => 12.0
  }

let flexBasis = maybeValue =>
  maybeValue
  ->Belt.Option.map(value => {
    let flexBasisValue = switch value {
    | #auto => "auto"
    | numericValue =>
      `${(numericValue->toFloat /. 12.0 *. 100.0)->Js.Float.toFixedWithPrecision(~digits=1)}%`
    }

    `flex-basis: ${flexBasisValue};`
  })
  ->Belt.Option.getWithDefault("")

let box = (~xxs=?, ~xs=?, ~sm=?, ~md=?, ~lg=?, ~xl=?, ()) =>
  Goober.css(
    ""
    ->greaterThan(#xxs, flexBasis(xxs))
    ->greaterThan(#xs, flexBasis(xs))
    ->greaterThan(#sm, flexBasis(sm))
    ->greaterThan(#md, flexBasis(md))
    ->greaterThan(#lg, flexBasis(lg))
    ->greaterThan(#xl, flexBasis(xl)),
  )

@react.component
let make = (
  // Flex
  ~display=?,
  ~justifyContent=?,
  ~flexDirection=?,
  ~alignItems=?,
  ~flexGrow=?,
  ~flexShrink=?,
  ~alignSelf=?,
  ~order=?,
  // Padding
  ~p=?,
  ~px=?,
  ~py=?,
  ~pt=?,
  ~pb=?,
  ~pl=?,
  ~pr=?,
  //Margin
  ~m=?,
  ~mx=?,
  ~my=?,
  ~mt=?,
  ~mb=?,
  ~ml=?,
  ~mr=?,
  // Columns,
  ~xxs=?,
  ~xs=?,
  ~sm=?,
  ~md=?,
  ~lg=?,
  ~xl=?,
  // Sizing
  ~width=?,
  ~height=?,
  ~minW=?,
  ~minH=?,
  ~maxW=?,
  ~maxH=?,
  // Position
  ~position=?,
  ~top=?,
  ~bottom=?,
  ~left=?,
  ~right=?,
  ~zIndex=?,
  // Box sizing
  ~boxSizing=?,
  // Props
  ~children,
  ~tag: Ancestor_React.tags=#div,
  ~className="",
  // Dom Props
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
  ~dir=?,
  ~draggable=?,
  ~hidden=?,
  ~id=?,
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
  ~alt=?,
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
  ~src=?,
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
  ~onChange=?,
  ~onInput=?,
  ~onSubmit=?,
  ~onInvalid=?,
  ~onClick=?,
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
  // Pointer events

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
  ~onEncrypetd=?,
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
  ~accentHeight=?,
  ~accumulate=?,
  ~additive=?,
  ~alignmentBaseline=?,
  ~allowReorder=?,
  ~alphabetic=?,
  ~amplitude=?,
  ~arabicForm=?,
  ~ascent=?,
  ~attributeName=?,
  ~attributeType=?,
  ~autoReverse=?,
  ~azimuth=?,
  ~baseFrequency=?,
  ~baseProfile=?,
  ~baselineShift=?,
  ~bbox=?,
  ~begin_=?,
  ~bias=?,
  ~by=?,
  ~calcMode=?,
  ~capHeight=?,
  ~clip=?,
  ~clipPath=?,
  ~clipPathUnits=?,
  ~clipRule=?,
  ~colorInterpolation=?,
  ~colorInterpolationFilters=?,
  ~colorProfile=?,
  ~colorRendering=?,
  ~contentScriptType=?,
  ~contentStyleType=?,
  ~cursor=?,
  ~cx=?,
  ~cy=?,
  ~d=?,
  ~decelerate=?,
  ~descent=?,
  ~diffuseConstant=?,
  ~direction=?,
  ~divisor=?,
  ~dominantBaseline=?,
  ~dur=?,
  ~dx=?,
  ~dy=?,
  ~edgeMode=?,
  ~elevation=?,
  ~enableBackground=?,
  ~end_=?,
  ~exponent=?,
  ~externalResourcesRequired=?,
  ~fill=?,
  ~fillOpacity=?,
  ~fillRule=?,
  ~filter=?,
  ~filterRes=?,
  ~filterUnits=?,
  ~floodColor=?,
  ~floodOpacity=?,
  ~focusable=?,
  ~fontFamily=?,
  ~fontSize=?,
  ~fontSizeAdjust=?,
  ~fontStretch=?,
  ~fontStyle=?,
  ~fontVariant=?,
  ~fontWeight=?,
  ~fomat=?,
  ~from=?,
  ~fx=?,
  ~fy=?,
  ~g1=?,
  ~g2=?,
  ~glyphName=?,
  ~glyphOrientationHorizontal=?,
  ~glyphOrientationVertical=?,
  ~glyphRef=?,
  ~gradientTransform=?,
  ~gradientUnits=?,
  ~hanging=?,
  ~horizAdvX=?,
  ~horizOriginX=?,
  ~ideographic=?,
  ~imageRendering=?,
  ~in_=?,
  ~in2=?,
  ~intercept=?,
  ~k=?,
  ~k1=?,
  ~k2=?,
  ~k3=?,
  ~k4=?,
  ~kernelMatrix=?,
  ~kernelUnitLength=?,
  ~kerning=?,
  ~keyPoints=?,
  ~keySplines=?,
  ~keyTimes=?,
  ~lengthAdjust=?,
  ~letterSpacing=?,
  ~lightingColor=?,
  ~limitingConeAngle=?,
  ~local=?,
  ~markerEnd=?,
  ~markerHeight=?,
  ~markerMid=?,
  ~markerStart=?,
  ~markerUnits=?,
  ~markerWidth=?,
  ~mask=?,
  ~maskContentUnits=?,
  ~maskUnits=?,
  ~mathematical=?,
  ~mode=?,
  ~numOctaves=?,
  ~offset=?,
  ~opacity=?,
  ~operator=?,
  ~orient=?,
  ~orientation=?,
  ~origin=?,
  ~overflow=?,
  ~overflowX=?,
  ~overflowY=?,
  ~overlinePosition=?,
  ~overlineThickness=?,
  ~paintOrder=?,
  ~panose1=?,
  ~pathLength=?,
  ~patternContentUnits=?,
  ~patternTransform=?,
  ~patternUnits=?,
  ~pointerEvents=?,
  ~points=?,
  ~pointsAtX=?,
  ~pointsAtY=?,
  ~pointsAtZ=?,
  ~preserveAlpha=?,
  ~preserveAspectRatio=?,
  ~primitiveUnits=?,
  ~r=?,
  ~radius=?,
  ~refX=?,
  ~refY=?,
  ~renderingIntent=?,
  ~repeatCount=?,
  ~repeatDur=?,
  ~requiredExtensions=?,
  ~requiredFeatures=?,
  ~restart=?,
  ~result=?,
  ~rotate=?,
  ~rx=?,
  ~ry=?,
  ~scale=?,
  ~seed=?,
  ~shapeRendering=?,
  ~slope=?,
  ~spacing=?,
  ~specularConstant=?,
  ~specularExponent=?,
  ~speed=?,
  ~spreadMethod=?,
  ~startOffset=?,
  ~stdDeviation=?,
  ~stemh=?,
  ~stemv=?,
  ~stitchTiles=?,
  ~stopColor=?,
  ~stopOpacity=?,
  ~strikethroughPosition=?,
  ~strikethroughThickness=?,
  ~string=?,
  ~stroke=?,
  ~strokeDasharray=?,
  ~strokeDashoffset=?,
  ~strokeLinecap=?,
  ~strokeLinejoin=?,
  ~strokeMiterlimit=?,
  ~strokeOpacity=?,
  ~strokeWidth=?,
  ~surfaceScale=?,
  ~systemLanguage=?,
  ~tableValues=?,
  ~targetX=?,
  ~targetY=?,
  ~textAnchor=?,
  ~textDecoration=?,
  ~textLength=?,
  ~textRendering=?,
  ~to_=?,
  ~transform=?,
  ~u1=?,
  ~u2=?,
  ~underlinePosition=?,
  ~underlineThickness=?,
  ~unicode=?,
  ~unicodeBidi=?,
  ~unicodeRange=?,
  ~unitsPerEm=?,
  ~vAlphabetic=?,
  ~vHanging=?,
  ~vIdeographic=?,
  ~vMathematical=?,
  ~values=?,
  ~vectorEffect=?,
  ~version=?,
  ~vertAdvX=?,
  ~vertAdvY=?,
  ~vertOriginX=?,
  ~vertOriginY=?,
  ~viewBox=?,
  ~viewTarget=?,
  ~visibility=?,
  ~widths=?,
  ~wordSpacing=?,
  ~writingMode=?,
  ~x=?,
  ~x1=?,
  ~x2=?,
  ~xChannelSelector=?,
  ~xHeight=?,
  ~xlinkActuate=?,
  ~xlinkArcrole=?,
  ~xlinkHref=?,
  ~xlinkRole=?,
  ~xlinkShow=?,
  ~xlinkTitle=?,
  ~xlinkType=?,
  ~xmlns=?,
  ~xmlnsXlink=?,
  ~xmlBase=?,
  ~xmlLang=?,
  ~xmlSpace=?,
  ~y=?,
  ~y1=?,
  ~y2=?,
  ~yChannelSelector=?,
  ~z=?,
  ~zoomAndPan=?,
  ~about=?,
  ~datatype=?,
  ~inlist=?,
  ~prefix=?,
  ~property=?,
  ~resource=?,
  ~typeof=?,
  ~vocab=?,
  ~dangerouslySetInnerHTML=?,
  ~suppressContentEditableWarning=?,
) => {
  Ancestor_React.createElement(
    tag,
    ReactDOM.domProps(
      ~className={
        let boxClassName = box(~xxs?, ~xs?, ~sm?, ~md?, ~lg?, ~xl?, ())

        let responsiveStyles =
          createResponsiveStyles(
            ~display?,
            ~justifyContent?,
            ~flexDirection?,
            ~alignItems?,
            ~flexGrow?,
            ~flexShrink?,
            ~alignSelf?,
            ~order?,
            ~p?,
            ~py?,
            ~px?,
            ~pt?,
            ~pb?,
            ~pl?,
            ~pr?,
            ~m?,
            ~mx?,
            ~my?,
            ~mt?,
            ~mb?,
            ~ml?,
            ~mr?,
            ~width?,
            ~height?,
            ~minW?,
            ~minH?,
            ~maxW?,
            ~maxH?,
            ~position?,
            ~top?,
            ~bottom?,
            ~left?,
            ~right?,
            ~zIndex?,
            ~boxSizing?,
            (),
          )->Goober.css

        `${boxClassName} ${className} ${responsiveStyles}`
      },
      ~ariaDetails?,
      ~ariaDisabled?,
      ~ariaHidden?,
      ~ariaKeyshortcuts?,
      ~ariaLabel?,
      ~ariaRoledescription?,
      ~ariaExpanded?,
      ~ariaLevel?,
      ~ariaModal?,
      ~ariaMultiline?,
      ~ariaMultiselectable?,
      ~ariaPlaceholder?,
      ~ariaReadonly?,
      ~ariaRequired?,
      ~ariaSelected?,
      ~ariaSort?,
      ~ariaValuemax?,
      ~ariaValuemin?,
      ~ariaValuenow?,
      ~ariaValuetext?,
      ~ariaAtomic?,
      ~ariaBusy?,
      ~ariaRelevant?,
      ~ariaGrabbed?,
      ~ariaActivedescendant?,
      ~ariaColcount?,
      ~ariaColindex?,
      ~ariaColspan?,
      ~ariaControls?,
      ~ariaDescribedby?,
      ~ariaErrormessage?,
      ~ariaFlowto?,
      ~ariaLabelledby?,
      ~ariaOwns?,
      ~ariaPosinset?,
      ~ariaRowcount?,
      ~ariaRowindex?,
      ~ariaRowspan?,
      ~ariaSetsize?,
      ~defaultChecked?,
      ~defaultValue?,
      ~accessKey?,
      ~contentEditable?,
      ~contextMenu?,
      ~dir?,
      ~draggable?,
      ~hidden?,
      ~id?,
      ~lang?,
      ~role?,
      ~style?,
      ~spellCheck?,
      ~tabIndex?,
      ~title?,
      ~itemID?,
      ~itemProp?,
      ~itemRef?,
      ~itemScope?,
      ~itemType?,
      ~accept?,
      ~acceptCharset?,
      ~action?,
      ~allowFullScreen?,
      ~alt?,
      ~async?,
      ~autoComplete?,
      ~autoCapitalize?,
      ~autoFocus?,
      ~autoPlay?,
      ~challenge?,
      ~charSet?,
      ~checked?,
      ~cite?,
      ~crossOrigin?,
      ~cols?,
      ~colSpan?,
      ~content?,
      ~controls?,
      ~coords?,
      ~data?,
      ~dateTime?,
      ~default?,
      ~defer?,
      ~disabled?,
      ~download?,
      ~encType?,
      ~form?,
      ~formAction?,
      ~formTarget?,
      ~formMethod?,
      ~headers?,
      ~high?,
      ~href?,
      ~hrefLang?,
      ~htmlFor?,
      ~httpEquiv?,
      ~icon?,
      ~inputMode?,
      ~integrity?,
      ~keyType?,
      ~kind?,
      ~label?,
      ~list?,
      ~loop?,
      ~low?,
      ~manifest?,
      ~max?,
      ~maxLength?,
      ~media?,
      ~mediaGroup?,
      ~method?,
      ~min?,
      ~minLength?,
      ~multiple?,
      ~muted?,
      ~name?,
      ~nonce?,
      ~noValidate?,
      ~open_?,
      ~optimum?,
      ~pattern?,
      ~placeholder?,
      ~playsInline?,
      ~poster?,
      ~preload?,
      ~radioGroup?,
      ~readOnly?,
      ~rel?,
      ~required?,
      ~reversed?,
      ~rows?,
      ~rowSpan?,
      ~sandbox?,
      ~scope?,
      ~scoped?,
      ~scrolling?,
      ~selected?,
      ~shape?,
      ~size?,
      ~sizes?,
      ~span?,
      ~src?,
      ~srcDoc?,
      ~srcLang?,
      ~srcSet?,
      ~start?,
      ~step?,
      ~summary?,
      ~target?,
      ~type_?,
      ~useMap?,
      ~value?,
      ~wrap?,
      ~onCopy?,
      ~onCut?,
      ~onPaste?,
      ~onCompositionEnd?,
      ~onCompositionStart?,
      ~onCompositionUpdate?,
      ~onKeyDown?,
      ~onKeyPress?,
      ~onKeyUp?,
      ~onFocus?,
      ~onBlur?,
      ~onChange?,
      ~onInput?,
      ~onSubmit?,
      ~onInvalid?,
      ~onClick?,
      ~onContextMenu?,
      ~onDoubleClick?,
      ~onDrag?,
      ~onDragEnd?,
      ~onDragEnter?,
      ~onDragExit?,
      ~onDragLeave?,
      ~onDragOver?,
      ~onDragStart?,
      ~onDrop?,
      ~onMouseDown?,
      ~onMouseEnter?,
      ~onMouseLeave?,
      ~onMouseMove?,
      ~onMouseOut?,
      ~onMouseOver?,
      ~onMouseUp?,
      ~onSelect?,
      ~onTouchCancel?,
      ~onTouchEnd?,
      ~onTouchMove?,
      ~onTouchStart?,
      // Pointer events

      ~onPointerOver?,
      ~onPointerEnter?,
      ~onPointerDown?,
      ~onPointerMove?,
      ~onPointerUp?,
      ~onPointerCancel?,
      ~onPointerOut?,
      ~onPointerLeave?,
      ~onGotPointerCapture?,
      ~onLostPointerCapture?,
      ~onScroll?,
      ~onWheel?,
      ~onAbort?,
      ~onCanPlay?,
      ~onCanPlayThrough?,
      ~onDurationChange?,
      ~onEmptied?,
      ~onEncrypetd?,
      ~onEnded?,
      ~onError?,
      ~onLoadedData?,
      ~onLoadedMetadata?,
      ~onLoadStart?,
      ~onPause?,
      ~onPlay?,
      ~onPlaying?,
      ~onProgress?,
      ~onRateChange?,
      ~onSeeked?,
      ~onSeeking?,
      ~onStalled?,
      ~onSuspend?,
      ~onTimeUpdate?,
      ~onVolumeChange?,
      ~onWaiting?,
      ~onLoad?,
      ~onAnimationStart?,
      ~onAnimationEnd?,
      ~onAnimationIteration?,
      ~onTransitionEnd?,
      ~accentHeight?,
      ~accumulate?,
      ~additive?,
      ~alignmentBaseline?,
      ~allowReorder?,
      ~alphabetic?,
      ~amplitude?,
      ~arabicForm?,
      ~ascent?,
      ~attributeName?,
      ~attributeType?,
      ~autoReverse?,
      ~azimuth?,
      ~baseFrequency?,
      ~baseProfile?,
      ~baselineShift?,
      ~bbox?,
      ~begin_?,
      ~bias?,
      ~by?,
      ~calcMode?,
      ~capHeight?,
      ~clip?,
      ~clipPath?,
      ~clipPathUnits?,
      ~clipRule?,
      ~colorInterpolation?,
      ~colorInterpolationFilters?,
      ~colorProfile?,
      ~colorRendering?,
      ~contentScriptType?,
      ~contentStyleType?,
      ~cursor?,
      ~cx?,
      ~cy?,
      ~d?,
      ~decelerate?,
      ~descent?,
      ~diffuseConstant?,
      ~direction?,
      ~divisor?,
      ~dominantBaseline?,
      ~dur?,
      ~dx?,
      ~dy?,
      ~edgeMode?,
      ~elevation?,
      ~enableBackground?,
      ~end_?,
      ~exponent?,
      ~externalResourcesRequired?,
      ~fill?,
      ~fillOpacity?,
      ~fillRule?,
      ~filter?,
      ~filterRes?,
      ~filterUnits?,
      ~floodColor?,
      ~floodOpacity?,
      ~focusable?,
      ~fontFamily?,
      ~fontSize?,
      ~fontSizeAdjust?,
      ~fontStretch?,
      ~fontStyle?,
      ~fontVariant?,
      ~fontWeight?,
      ~fomat?,
      ~from?,
      ~fx?,
      ~fy?,
      ~g1?,
      ~g2?,
      ~glyphName?,
      ~glyphOrientationHorizontal?,
      ~glyphOrientationVertical?,
      ~glyphRef?,
      ~gradientTransform?,
      ~gradientUnits?,
      ~hanging?,
      ~horizAdvX?,
      ~horizOriginX?,
      ~ideographic?,
      ~imageRendering?,
      ~in_?,
      ~in2?,
      ~intercept?,
      ~k?,
      ~k1?,
      ~k2?,
      ~k3?,
      ~k4?,
      ~kernelMatrix?,
      ~kernelUnitLength?,
      ~kerning?,
      ~keyPoints?,
      ~keySplines?,
      ~keyTimes?,
      ~lengthAdjust?,
      ~letterSpacing?,
      ~lightingColor?,
      ~limitingConeAngle?,
      ~local?,
      ~markerEnd?,
      ~markerHeight?,
      ~markerMid?,
      ~markerStart?,
      ~markerUnits?,
      ~markerWidth?,
      ~mask?,
      ~maskContentUnits?,
      ~maskUnits?,
      ~mathematical?,
      ~mode?,
      ~numOctaves?,
      ~offset?,
      ~opacity?,
      ~operator?,
      ~orient?,
      ~orientation?,
      ~origin?,
      ~overflow?,
      ~overflowX?,
      ~overflowY?,
      ~overlinePosition?,
      ~overlineThickness?,
      ~paintOrder?,
      ~panose1?,
      ~pathLength?,
      ~patternContentUnits?,
      ~patternTransform?,
      ~patternUnits?,
      ~pointerEvents?,
      ~points?,
      ~pointsAtX?,
      ~pointsAtY?,
      ~pointsAtZ?,
      ~preserveAlpha?,
      ~preserveAspectRatio?,
      ~primitiveUnits?,
      ~r?,
      ~radius?,
      ~refX?,
      ~refY?,
      ~renderingIntent?,
      ~repeatCount?,
      ~repeatDur?,
      ~requiredExtensions?,
      ~requiredFeatures?,
      ~restart?,
      ~result?,
      ~rotate?,
      ~rx?,
      ~ry?,
      ~scale?,
      ~seed?,
      ~shapeRendering?,
      ~slope?,
      ~spacing?,
      ~specularConstant?,
      ~specularExponent?,
      ~speed?,
      ~spreadMethod?,
      ~startOffset?,
      ~stdDeviation?,
      ~stemh?,
      ~stemv?,
      ~stitchTiles?,
      ~stopColor?,
      ~stopOpacity?,
      ~strikethroughPosition?,
      ~strikethroughThickness?,
      ~string?,
      ~stroke?,
      ~strokeDasharray?,
      ~strokeDashoffset?,
      ~strokeLinecap?,
      ~strokeLinejoin?,
      ~strokeMiterlimit?,
      ~strokeOpacity?,
      ~strokeWidth?,
      ~surfaceScale?,
      ~systemLanguage?,
      ~tableValues?,
      ~targetX?,
      ~targetY?,
      ~textAnchor?,
      ~textDecoration?,
      ~textLength?,
      ~textRendering?,
      ~to_?,
      ~transform?,
      ~u1?,
      ~u2?,
      ~underlinePosition?,
      ~underlineThickness?,
      ~unicode?,
      ~unicodeBidi?,
      ~unicodeRange?,
      ~unitsPerEm?,
      ~vAlphabetic?,
      ~vHanging?,
      ~vIdeographic?,
      ~vMathematical?,
      ~values?,
      ~vectorEffect?,
      ~version?,
      ~vertAdvX?,
      ~vertAdvY?,
      ~vertOriginX?,
      ~vertOriginY?,
      ~viewBox?,
      ~viewTarget?,
      ~visibility?,
      ~widths?,
      ~wordSpacing?,
      ~writingMode?,
      ~x?,
      ~x1?,
      ~x2?,
      ~xChannelSelector?,
      ~xHeight?,
      ~xlinkActuate?,
      ~xlinkArcrole?,
      ~xlinkHref?,
      ~xlinkRole?,
      ~xlinkShow?,
      ~xlinkTitle?,
      ~xlinkType?,
      ~xmlns?,
      ~xmlnsXlink?,
      ~xmlBase?,
      ~xmlLang?,
      ~xmlSpace?,
      ~y?,
      ~y1?,
      ~y2?,
      ~yChannelSelector?,
      ~z?,
      ~zoomAndPan?,
      ~about?,
      ~datatype?,
      ~inlist?,
      ~prefix?,
      ~property?,
      ~resource?,
      ~typeof?,
      ~vocab?,
      ~dangerouslySetInnerHTML?,
      ~suppressContentEditableWarning?,
      (),
    ),
    children,
  )
}