const dbQuery = require('../database/db-connection');

class ImageUrlModel{
    tableName = 'image_urls';

    findByProjectId = async(params) => {
        const sql = `SELECT url, landing FROM ${this.tableName} WHERE project_id = ${params.projectId}`;
        return await dbQuery(sql);
    }

}

module.exports = new ImageUrlModel;