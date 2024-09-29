const pool = require('../database/connection')

const getUserProduct = (req,res)=>{
    const {usertype} = req.params
    pool.query(`SELECT * FROM category  WHERE category.user_type = '${usertype}' `,(error,result)=>{
        if (error) throw error
        res.send(result.rows)
    })
}

const getCategoryProduct = (req,res) =>{
    const {usertype,category} = req.params
    // console.log(usertype,category)
    const query = `SELECT t1.*,t2.image_source 
                    FROM public.product t1
                    JOIN (
                        SELECT 
                            product_id,MIN(image_source) AS image_source
                        FROM public.product_color
                        GROUP BY product_id
                    ) t2
                    ON t1.product_id = t2.product_id
                    WHERE t1.sex = '${usertype}'
                    AND t1.category = '${category}'`
    pool.query(query,(error,result)=>{
        if(error) throw error
        res.send(result)
    })
}



module.exports = {getUserProduct,getCategoryProduct}