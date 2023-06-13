
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const db = require('./database/models')

const session = require('express-session')
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var camisetasRouter = require('./routes/camisetas');

var app = express();
/* configuracion para que session inicie*/
app.use(session({secret:"Casacas GGA",resave:false, saveUninitialized:true}));
//locals
app.use(function(req,res,next){
  if (req.session.Usuario != undefined) {
    res.locals.usuarioLogueado= true
    res.locals.Usuario=req.session.Usuario
    
    
  }
  else {
    res.locals.usuarioLogueado= false
  }

  return next();
})
//cookies
app.use(function(req,res,next){
  if (req.cookies.userId != undefined && req.session.Usuario==undefined) {
    let idUsuario = req.cookies.userId
    db.Usuario.findByPk(idUsuario)
    .then((Usuario)=> {
      req.session.Usuario= Usuario.dataValues;
      res.locals.Usuario =Usuario.dataValues;

      return next()

    })
    .catch((err)=> {
      console.log(err)
    })
  } else {
    return next()
  }
});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/camisetas', camisetasRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
