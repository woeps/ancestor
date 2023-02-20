module Make = (Config: ExplorationCss.Config) => {
  module Config = Config

  module Experiment = {
    let make = Ancestor_Experiment.make(
      Config.breakpoints,
      Config.radius,
      Config.colors,
      Config.spacing,
      Config.Css.style,
    )
  }

  /*
   * Exposing Ancestor hooks
   */
  /* TODO in experiment
  let {useResponsiveValue} = module(ResponsiveValueHook)
  let {useCss} = module(Styles.Css)
 */
}
