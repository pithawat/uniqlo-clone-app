const pool = require('../database/connection')

const add_product = (req,res)=>{

    pool.query('')
}






///manual add items

// const img = [{'img_source': 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464544/item/goods_56_464544.jpg?width=750', 'color': 'OLIVE', 'bg_img': 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464544/chip/goods_08_464544_chip.jpg'}, {'img_source': 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464544/item/goods_08_464544.jpg?width=750', 'color': 'DARK GRAY', 'bg_img': 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464544/chip/goods_30_464544_chip.jpg'}, {'img_source': 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464544/item/goods_30_464544.jpg?width=750', 'color': 'NATURAL', 'bg_img': 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/464544/chip/goods_56_464544_chip.jpg'}]

// for (let i = 0 ; i< img.length; i++){
//     pool.query(`INSERT INTO product_color (product_id,color,image_source,bg_color,amount) 
//                 VALUES (${40},'${img[i].color}','${img[i].img_source}','${img[i].bg_img}',${10})`)
//     console.log(img[i].color)
// }
/////////  before run this code please check product id has change /////