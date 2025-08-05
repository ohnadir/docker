import express from 'express'
const app = express()
import dotenv from "dotenv"
dotenv.config()

const port = 8080;

app.get('/', (req, res) => {
    res.send('Hello Docker Container with changes i can change the code.  🐳')
})

app.listen(port,  () => {
    console.log(`Hello From Docker 🐳 ${port}`)
})
