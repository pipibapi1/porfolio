const projectModel = require('../models/project.model');

class IndexController{
    getOverviewInfo = async(req, res, next) => {
        const projects = await projectModel.find();
        res.locals.projects = projects;
        res.render('index');
    }

    getAboutInfo = async(req, res, next) => {
        res.render('about');
    }
}

module.exports = new IndexController;