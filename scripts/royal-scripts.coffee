module.exports = (robot) ->
  robot.hear /with crown/i, (res) ->
    res.send '![king with crown](' + process.env.KING_IMG_URL + ')'
