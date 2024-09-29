const express = require('express')
const router = express.Router()
const productController = require('../controller/productController')

/**
 * @swagger
 * /product/{productid}:
 *      get:
 *          summary: get all color in product
 *          parameters:
 *              - in: path
 *                name: productid
 *                schema:
 *                  type: integer
 *                require: true
 *                description: such as 2,3,4,6,7,8,9 (some product id doesnot has)
 *          responses:
 *              200:
 *                  description: all list color of product
 *                  content: 
 *                      application/json:
 *                          schema:
 *                              type: array
 *                              items: 
 *                                  type: object
 *                                  properties:
 *                                      product_color_id:
 *                                          type: integer
 *                                      product_id:
 *                                          type: integer
 *                                      color:
 *                                          type: string
 *                                      image_source:
 *                                          type: string
 *                                      bg_color:
 *                                          type: string
 *                                      amount:
 *                                          type: integer
 */
router.use('/:productid',productController.getProduct)

module.exports = router;