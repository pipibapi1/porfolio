const dbQuery = require('../database/db-connection');
const technologyModel = require('../models/technology.model');
const imageUrlModel = require('../models/image-url.model');

class ProjectModel{
    tableName = 'projects';

    //Get all projects with all their information (use technologies and image_urls tables)
    find = async (param = {}) => {
        const getAllProjectSql = `SELECT *
                                  FROM ${this.tableName}
                                  `;
        const projects = await dbQuery(getAllProjectSql);

        const projectsWithInfo = await Promise.all(projects.map(async(project) => {
            const technologies = (await technologyModel.findByProjectId({projectId: project.id})).map(technologyObject => {
                return technologyObject.technology_name;
            });
            const imageUrls = await imageUrlModel.findByProjectId({projectId: project.id});

            return {
                id: project.id,
                project_name: project.project_name,
                description: project.description,
                technologies: technologies,
                live_link: project.live_link,
                github_link: project.github_link,
                image_urls: imageUrls
            }
        }))
        return projectsWithInfo;
    }

}

module.exports = new ProjectModel;