describe "Rules of Bowling", ->

  it "should give you a score of 0 if you don't knock any skittles down", ->

    game = new Bowling.Game()
    game.roll(0)

    expect(game.score()).toBe 0

  it "should give you a score equal to the first roll", ->

    game = new Bowling.Game()
    game.roll(5)

    expect(game.score()).toBe 5

  it "should give you a score equal to multiple rolls", ->

    game = new Bowling.Game()
    game.roll(5)
    game.roll(3)

    expect(game.score()).toBe 8

