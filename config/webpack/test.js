process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

$(function(){
  $("#test").css("color","red")
  $(".hoge").css("color","#00ff7f")
});