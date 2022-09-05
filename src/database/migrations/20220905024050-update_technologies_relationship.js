'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.dropTable('technologies');

    await queryInterface.createTable('technologies', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      technology_name: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });

    await queryInterface.createTable('projects_technologies',{
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      project_id: {
        allowNull: false,
        type: Sequelize.INTEGER,
        references: {model: 'projects', key: 'id'}
      },
      technology_id: {
        allowNull: false,
        type: Sequelize.INTEGER,
        references: {model: 'technologies', key: 'id'}
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    })
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.dropTable('technologies');

    await queryInterface.createTable('technologies', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      technology_name: {
        type: Sequelize.STRING
      },
      project_id: {
        allowNull: false,
        type: Sequelize.INTEGER,
        references: {model: 'projects', key: 'id'}
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });

    await queryInterface.dropTable('projects_technologies');
  }
};
