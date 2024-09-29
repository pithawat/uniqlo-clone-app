const pool = require('../database/connection')

const getProduct = (req,res) =>{
    const {productid} = req.params
    const query = `SELECT * FROM product_color pdc WHERE ${productid} = pdc.product_id`
    pool.query(query,(error,result)=>{
        if (error) throw error;
        res.send(result.rows)
    })
}

module.exports = {getProduct}
