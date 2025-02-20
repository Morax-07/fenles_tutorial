'use strict';

const { filter } = require('../../../../config/middlewares');

/**
 * pub controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::pub.pub', ({ strapi }) => ({

    async find(ctx) {
        let result  = await strapi.entityService.findMany('api::pub.pub', {populate: '*'});
        return result
    }
        
}));