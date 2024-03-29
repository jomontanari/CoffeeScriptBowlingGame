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


# Additional tests
# After rolling a spare, the score should equal 10 + next ball
# After rolling a strike, the score should equal 10 + next frame
# If a strike or a spare is rolled in the last frame, the user gets an extra ball