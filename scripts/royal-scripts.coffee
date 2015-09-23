module.exports = (robot) ->
  robot.hear /with crown/i, (res) ->
    res.send '![king with crown](' + process.env.KING_IMG_URL + ')'

   robot.hear /symfony/i, (res) ->
    res.send '![symfony-to-kupka](' + process.env.SYMFONY_IMG_URL + ')'

   robot.hear /laravel/i, (res) ->
    res.send 'Oh to ten super framework, szkoda tylko ze nie jest przyszlosciowy :/ http://www.google.com/trends/explore#q=laravel%2C%20symfony&cmpt=q&tz=Etc%2FGMT-2'
