const express = require('express')
const app = express()
const cors = require('cors')
const swaggerUI = require('swagger-ui-express')
const swaggerJsDoc = require('swagger-jsdoc')

app.use(express.json())
app.use(cors())

const options ={
    definition:{
        openapi:'3.0.0',
        info:{
            title: 'Library API',
            versions:'1.0.0',
            description:'Uniqlo library api'
        },
        servers:[
            {
                url:'http://localhost:5500'
            }
        ],
    },
    apis:["./routes/*.js"]
}

const specs = swaggerJsDoc(options)

app.use('/docs-api',swaggerUI.serve,swaggerUI.setup(specs))
app.use('/home',require('./routes/home'))
app.use('/user',require('./routes/userProduct'))
app.use('/product',require('./routes/product'))

app.listen(5500, ()=>{
    console.log('server listening on port 5500')
})


  