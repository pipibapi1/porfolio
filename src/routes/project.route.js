const express = require('express');
const router = express.Router();
const projectController = require('../controllers/project.controller');
const awaitHandler = require('../middlewares/await-handler.middleware');

/**
 * @swagger
 * /projects:
 *   get:
 *    description: Use to get all personal projects 
 *    responses:
 *      '200':
 *        description: Redirect back to Home Page because Home Page already contains list of personal projects
 */
router.get('/', awaitHandler(projectController.getAllProjects));

/**
 * @swagger
 * /projects/:projectId:
 *   get:
 *    description: Use to get detailed information of a specific project
 *    responses:
 *      '200':
 *        description: Successfully display detailed information of specific project
 */
router.get('/:projectId', awaitHandler(projectController.getProjectById));

module.exports = router;