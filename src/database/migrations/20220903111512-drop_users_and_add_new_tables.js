'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.dropTable('users');

    await queryInterface.createTable('projects', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      project_name: {
        type: Sequelize.STRING
      },
      description: {
        type: Sequelize.STRING
      },
      live_link: {
        type: Sequelize.STRING
      },
      github_link: {
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

    await queryInterface.createTable('image_urls', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      url: {
        type: Sequelize.STRING
      },
      landing: {
        type: Sequelize.BOOLEAN
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
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.dropTable('projects');
    await queryInterface.dropTable('technologies');
    await queryInterface.dropTable('image_urls');
  }
};
