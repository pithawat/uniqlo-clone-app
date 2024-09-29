const express = require('express')
const router = express.Router()
const userTypeController = require('../controller/userTypeController')

/**
 * @swagger
 * /user/{usertype}:
 *      get:
 *          summary: Return all category user has
 *          parameters:
 *              - in : path
 *                name : usertype
 *                schema:
 *                  type: string
 *                require: true
 *                description:  such as "men" , "women" , "kids" , "newborn" 
 *          responses:
 *                  200:
 *                      description: the list all category user have
 *                      content:
 *                          application/json:
 *                              schema:
 *                                  type: array
 *                                  items:
 *                                      type: object
 *                                      properties:
 *                                          product_id:
 *                                              type: integer
 *                                          type:
 *                                              type: string
 *                                          user_type:
 *                                              type: string
 *                                          image_source:
 *                                              type: string
 */
router.get('/:usertype',userTypeController.getUserProduct)

/**
 * @swagger
 * /user/{usertype}/{category}:
 *      get:
 *          summary: Return all product has in that category
 *          parameters:
 *              - in: path
 *                name: usertype
 *                schema:
 *                  type: string
 *                require: true
 *                description: such as "men" , "women" , "kids" , "newborn" 
 *              - in: path
 *                name: category
 *                schema: 
 *                  type: string
 *                require: true
 *                description: such as ( in usertype = men "t-shirt" "polo-shirt" "casual-shirts" ) ,        (in usertype =  women "knitwear" "t-shirt" "shirts-and-blouses" ) , (in usertype = 'kids' "ut-graphic-tees" "hoodies-and-sweatshirts" "t-shirt" ) , ( in usertype =  newborn "pants" "one-piece" "bodysuit" )
 *          responses:
 *              200:
 *                  description: list all product in category
 *                  content: 
 *                      application/json:
 *                          schema:
 *                              type: array
 *                              items:
 *                                  type: object
 *                                  properties:
 *                                      product_id:
 *                                          type: integer
 *                                      category:
 *                                          type: string
 *                                      sex:
 *                                          type: string
 *                                      title:
 *                                          type: string
 *                                      price:
 *                                          type: integer
 *                                      product_detail:
 *                                          type: string
 *                                      material:
 *                                          type: string
 *                                      image_source:
 *                                          type: string
 * 
 * 
 */
router.get('/:usertype/:category',userTypeController.getCategoryProduct)

module.exports = router;