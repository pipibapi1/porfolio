const dbQuery = require('../database/db-connection');

class TechnologyModel{
    tableName = 'technologies';

    findByProjectId = async(params) => {
        const sql = `SELECT technology_name FROM ${this.tableName} t, projects_technologies pt 
                    WHERE pt.project_id = ${params.projectId} AND pt.technology_id = t.id`;
        return await dbQuery(sql);
    }
    
}

module.exports = new TechnologyModel;