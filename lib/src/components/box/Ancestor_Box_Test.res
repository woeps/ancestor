open Ancestor_Jest
open Ancestor.Default
module Renderer = Ancestor_ReactTestRenderer

describe("Box", (. ()) => {
  it("should render a Box with columns correctly", (. ()) => {
    expect(
      Renderer.create(<Box columns=[xs(#6), md(#12), lg(#3)]> <div /> </Box>)->Renderer.toJSON,
    )->toMatchSnapshot
  })
})