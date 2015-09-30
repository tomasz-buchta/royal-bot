module.exports = (robot) ->
  robot.hear /with crown/i, (res) ->
    res.send '![king with crown](' + process.env.KING_IMG_URL + ')'

   robot.hear /symfony/i, (res) ->
    res.send '![symfony-to-kupka](' + process.env.SYMFONY_IMG_URL + ')'

   robot.hear /laravel/i, (res) ->
    res.send 'Oh to ten super framework, szkoda tylko ze nie jest przyszlosciowy :/ http://www.google.com/trends/explore#q=laravel%2C%20symfony&cmpt=q&tz=Etc%2FGMT-2'
   
  robot.respond /pug me/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).pug

  robot.respond /pug bomb( (\d+))?/i, (msg) ->
    msg.send 'This command is banned'

  robot.respond /how many pugs are there/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).pug_count} pugs."