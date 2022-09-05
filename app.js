const createError = require('http-errors');
const express = require('express');
const favicon = require('express-favicon');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');

// use swagger for api documents
const swaggerOptions = {
  swaggerDefinition:{
    info:{
      title: "Personal Porfolio API",
      description: "Personal Porfolio API Description",
    }
  },
  apis: ["src/routes/*.route.js"],
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);

const indexRouter = require('./src/routes/index.route');
const projectRouter = require('./src/routes/project.route')

const app = express();

// add favicon
app.use(favicon(__dirname + '/public/img/favicon.jpeg')); 

// view engine setup
app.set('views', path.join(__dirname, 'src/views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

//api swagger route
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));

//static files route
app.use('/static', express.static(path.join(__dirname, 'public')));

//routes
app.use('/', indexRouter);
app.use('/projects', projectRouter);

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
  res.render('error', {err});
});

module.exports = app;
