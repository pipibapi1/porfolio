const projectModel = require('../models/project.model');

class ProjectController{
    getAllProjects = async(req, res, next) => {
        res.redirect('/');
    }

    getProjectById = async(req, res, next) => {
        const {projectId} = req.params;
        const projects = await projectModel.find();
        const project = projects[projectId - 1];

        res.render('projects', {project});
    }
}

module.exports = new ProjectController;