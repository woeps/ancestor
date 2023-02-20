module Make: (C: ExplorationCss.Config) =>
(
  {
    module Config: ExplorationCss.Config
    module Experiment: {
      let make: Ancestor_Experiment.props<
        C.radius,
        C.colors,
        C.spacing,
        [<
          | #currentColor
          | #hex(string)
          | #hsl(
            Css_AtomicTypes.Angle.t,
            Css_AtomicTypes.Percentage.t,
            Css_AtomicTypes.Percentage.t,
          )
          | #hsla(
            Css_AtomicTypes.Angle.t,
            Css_AtomicTypes.Percentage.t,
            Css_AtomicTypes.Percentage.t,
            [#num(float) | #percent(float)],
          )
          | #rgb(int, int, int)
          | #rgba(int, int, int, [#num(float) | #percent(float)])
          | #transparent
          | #var(string)
          | #varDefault(string, string)
        ],
      > => React.element
    }
  }
    with module Config = C
)
