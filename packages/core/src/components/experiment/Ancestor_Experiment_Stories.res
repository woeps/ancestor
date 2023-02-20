let default = Storybook.story(~title="Components/Experiment", ())

let basicUsage = () => {
  open Ancestor
  open Css_Js_Core

  // FIXME: make all configuration availabl inside Ancestor.Config !
  //assert (Ancestor.Config.Primary == ExplorationCssTest.TestConfig.Primary)

  <Experiment
    minW={xs: 50->px, lg: 200->px}
    minH={xs: 50->px, lg: 200->px}
    maxW={xs: 100->px, lg: 400->px}
    maxH={xs: 100->px, lg: 400->px}
    borderStyle={xs: solid, md: dashed, lg: double}
    borderWidth={xs: 10->px}
    borderColor={xs: ExplorationCssTest.TestConfig.Primary, md: Secondary, lg: Background}
    width={xs: 100.->pct}
    height={xs: 100.->pct}>
    {React.string("Hello world!")}
  </Experiment>
}

let customizedSingleComponent = () => {
  open Css_Js_Core

  module CustomizedSingleComponent = {
    let make = Ancestor_Experiment.make(
      ExplorationCssTest.TestConfig.breakpoints,
      ExplorationCssTest.TestConfig.radius,
      ExplorationCssTest.TestConfig.colors,
      ExplorationCssTest.TestConfig.spacing,
      ExplorationCssTest.TestConfig.Css.style,
    )
  }
  <CustomizedSingleComponent
    borderStyle={xs: solid, md: dashed, lg: double}
    borderWidth={xs: 10->px}
    borderColor={
      xs: ExplorationCssTest.TestConfig.Primary,
      md: Secondary,
      lg: Custom("ff0000"->hex),
    }
    width={xs: 100.->pct}
    height={xs: 100.->pct}
    p={xs: ExplorationCssTest.TestConfig.M, md: ExplorationCssTest.TestConfig.L}
    bgColor={xs: ExplorationCssTest.TestConfig.Background}
    color={xs: ExplorationCssTest.TestConfig.Primary}
    borderRadius={
      xs: ExplorationCssTest.TestConfig.Rect,
      md: ExplorationCssTest.TestConfig.Round(24),
    }>
    {React.string("Hello world!")}
  </CustomizedSingleComponent>
}
