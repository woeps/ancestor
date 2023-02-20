module DefaultConfig = {
  module Breakpoints = {
    let breakpoints = {
      ExplorationCss.Breakpoints.xs: 0,
      sm: 475,
      md: 920,
      lg: 1280,
      xl: 1920,
    }
  }

  module CssJs = {
    module Emotion = {
      type cssStyleEncoding = string
      type cssRenderer = Js.Json.t
      module Css = CssJs
    }
  }
}

module TestConfig = {
  include DefaultConfig.Breakpoints

  type spacing = S | M | L
  let spacing = s => {
    open Css_AtomicTypes.Length
    let factor = 8
    switch s {
    | S => (1 * factor)->px
    | M => (2 * factor)->px
    | L => (4 * factor)->px
    }
  }

  type radius = Rect | Round(int)
  let radius = r => {
    open Css_AtomicTypes.Length
    switch r {
    | Rect => zero
    | Round(radius) => radius->px
    }
  }

  type zIndex = Bottom | Default | Top
  let zIndex = z => {
    switch z {
    | Bottom => -5
    | Default => 5
    | Top => 99
    }
  }

  type colors = Primary | Secondary | Background | Custom(Css_AtomicTypes.Color.t)
  let colors = c => {
    open Css_Js_Core
    switch c {
    | Primary => "ffff00"->hex
    | Secondary => "6666ff"->hex
    | Background => "333333"->hex
    | Custom(color) => color
    }
  }

  include DefaultConfig.CssJs.Emotion
}
