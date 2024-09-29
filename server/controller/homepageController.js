const pool = require('../database/connection')



const getHomepageContent = (req,res) =>{
    pool.query('SELECT * FROM advertisement',(error,result)=>{
        if (error) throw error
        res.send(result.rows)
    });
}

const getContent = (req,res) =>{
    pool.query('SELECT * FROM product',(error,result)=>{
        if (error) throw error
        res.send(result.rows)
    });
}
module.exports = {getHomepageContent,getContent}