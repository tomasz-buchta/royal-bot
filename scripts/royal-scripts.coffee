module.exports = (robot) ->
  robot.hear /with crown/i, (res) ->
    res.send '![king with crown](' + process.env.KING_IMG_URL + ')'

   robot.hear /symfony/i, (res) ->
    res.send '![symfony-to-kupka](' + process.env.SYMFONY_IMG_URL + ')'
