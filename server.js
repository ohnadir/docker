import express from 'express'
const app = express()
import dotenv from "dotenv"
dotenv.config()

const port = process.env.PORT || 8080;
const ip = process.env.IP_ADDRESS;

app.get('/', (req, res) => {
    res.send('Hello Docker Container 🐳')
})

app.listen(port, ip,  () => {
    console.log(`Hello From Docker 🐳 ${port}`)
})
