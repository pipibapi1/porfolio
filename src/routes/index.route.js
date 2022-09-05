const express = require('express');
const router = express.Router();
const indexController = require('../controllers/index.controller')
const awaitHandler = require('../middlewares/await-handler.middleware');

/**
 * @swagger
 * /:
 *   get:
 *    description: Use to display Home Page of Porfolio
 *    responses:
 *      '200':
 *        description: Successfull display Home Page of Porfolio
 */
router.get('/', awaitHandler(indexController.getOverviewInfo));

/**
 * @swagger
 * /about:
 *   get:
 *    description: Use to display About Page of Porfolio
 *    responses:
 *      '200':
 *        description: Successfull display About Page of Porfolio
 */
router.get('/about', awaitHandler(indexController.getAboutInfo));

module.exports = router;
