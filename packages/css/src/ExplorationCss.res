module Breakpoints = {
  type t<'a> = {
    xs?: 'a,
    sm?: 'a,
    md?: 'a,
    lg?: 'a,
    xl?: 'a,
  }

  type definitions = t<int>

  let map: (t<'a>, 'a => 'b) => t<'b> = (b, f) => {
    let g = x => Belt.Option.map(x, f)
    {
      xs: ?b.xs->g,
      sm: ?b.sm->g,
      md: ?b.md->g,
      lg: ?b.lg->g,
      xl: ?b.xl->g,
    }
  }

  let mapOption: (option<t<'a>>, 'a => 'b) => option<t<'b>> = (b, f) =>
    b->Belt.Option.map(b => map(b, f))

  let toTuple: array<t<'a>> => (array<'a>, array<'a>, array<'a>, array<'a>, array<'a>) = x => {
    let xsR = []
    let smR = []
    let mdR = []
    let lgR = []
    let xlR = []
    let push = (x, arr) => x->Belt.Option.mapWithDefault((), y => Belt.Array.push(arr, y))
    x->Belt.Array.forEachU((. bo) => {
      bo.xs->push(xsR)
      bo.sm->push(smR)
      bo.md->push(mdR)
      bo.lg->push(lgR)
      bo.xl->push(xlR)
    })
    (xsR, smR, mdR, lgR, xlR)
  }

  let toMediaQueries: (array<t<Css_Js_Core.rule>>, t<int>) => array<Css_Js_Core.rule> = (
    x,
    brkp,
  ) => {
    let (xsStyles, smStyles, mdStyles, lgStyles, xlStyles) = x->toTuple
    let result = []
    let mediaQuery = (brkp, styles) =>
      brkp->Belt.Option.mapWithDefaultU((), (. width) =>
        Css_Js_Core.media(. `(min-width: ${width->Belt.Int.toString}px)`, styles)->Belt.Array.push(
          result,
          _,
        )
      )

    mediaQuery(brkp.xs, xsStyles)
    mediaQuery(brkp.sm, smStyles)
    mediaQuery(brkp.md, mdStyles)
    mediaQuery(brkp.lg, lgStyles)
    mediaQuery(brkp.xl, xlStyles)

    result
  }
}

let makeMediaQueries: (
  option<Breakpoints.t<'a>>,
  Breakpoints.t<int>,
  'a => Css_Js_Core.rule,
) => array<Css_Js_Core.rule> = (brkps, brkpDef, toRule) => {
  let mediaQuery = (val, def) =>
    val->Belt.Option.flatMap(v =>
      def->Belt.Option.map(width =>
        Css_Js_Core.media(. `(min-width: ${width->Belt.Int.toString}px)`, [v->toRule])
      )
    )
  brkps
  ->Belt.Option.map(brkps =>
    [
      brkps.xs->mediaQuery(brkpDef.xs),
      brkps.sm->mediaQuery(brkpDef.sm),
      brkps.md->mediaQuery(brkpDef.md),
      brkps.lg->mediaQuery(brkpDef.lg),
      brkps.xl->mediaQuery(brkpDef.xl),
    ]->Belt.Array.keepMap(x => x)
  )
  ->Belt.Option.getWithDefault([])
}

module type CssJs = {
  open Css_Js_Core

  let insertRule: (. string) => unit
  let renderRule: (. 'renderer, string) => unit

  let global: (. string, array<rule>) => unit
  let renderGlobal: (. 'renderer, string, array<rule>) => unit

  let style: (. array<rule>) => 'styleEncoding

  let merge: (. array<'styleEncoding>) => 'styleEncoding
  let merge2: (. 'styleEncoding, 'styleEncoding) => 'styleEncoding
  let merge3: (. 'styleEncoding, 'styleEncoding, 'styleEncoding) => 'styleEncoding
  let merge4: (. 'styleEncoding, 'styleEncoding, 'styleEncoding, 'styleEncoding) => 'styleEncoding

  let keyframes: (. array<(int, array<rule>)>) => animationName
  let renderKeyframes: (. 'renderer, array<(int, array<rule>)>) => animationName
}

module type Config = {
  // breakpoints
  let breakpoints: Breakpoints.t<int>

  // spacing
  type spacing
  let spacing: spacing => Css_AtomicTypes.Length.t

  // radius
  type radius
  let radius: radius => Css_AtomicTypes.Length.t

  // zindex
  type zIndex
  let zIndex: zIndex => int

  // colors
  type colors
  let colors: colors => Css_AtomicTypes.Color.t

  // css-in-js
  type cssStyleEncoding = string
  type cssRenderer
  module Css: Css_Js_Core.MakeResult
    with type styleEncoding := cssStyleEncoding
    and type renderer := cssRenderer
}

module type T = {
  module Config: Config
}

/*
module Make = (Config: Config): (T with module Config := Config) => {
  // NOTE: this functor is probably never used
  let x = "X"
}

*/
