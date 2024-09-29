const express = require('express')
const router = express.Router()
const homepageController = require('../controller/homepageController')



/**
* @swagger
* /home:
*   get:
*       summary: Return the list all advertisement image
*       responses: 
*            200:
*               description: the list of advertisement image
*               content: 
*                       application/json:
*                           schema:
*                               type: array
*                               items:
*                                   type: object
*                                   properties:
*                                       ad_id:
*                                           type: integer
*                                       description:
*                                           type: string
*                                       price:
*                                           type: integer
*                                       start_date:
*                                           type: string
*                                       end_date:
*                                           type: string
*                                       img_source:
*                                           type: string
*                                       title:
*                                           type: string
*/

router.get('/',homepageController.getHomepageContent)
module.exports = router;