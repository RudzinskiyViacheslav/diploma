import express from 'express';
import { establishPSQLConnection } from './framework/database/psql/connection.js'
import { CapfkHandlers } from './src/handlers/capfk.js'
import { ProductionCardHandlers } from './src/handlers/production_card.js';
import { ProductionPointHandlers } from './src/handlers/production_point.js';
import { UserHandlers } from './src/handlers/users.js';

const app = express();

const port = 3000;

const conn = establishPSQLConnection()

const apiVersion = 'v1'

app.use(express.json())

let capfk = new CapfkHandlers(conn)
let prodPoint = new ProductionPointHandlers(conn)
let prodcard = new ProductionCardHandlers(conn)
let user = new UserHandlers(conn)

// Пока оставлю для проверки сервера
app.get("/", (req, res) => {
  console.log(req);
  res.send(`Ohh shit, it really works! ${req}`);
});

app.get(`/api/${apiVersion}/capfk`, capfk.handler);
app.get(`/api/${apiVersion}/production_point`, prodPoint.handler);
app.get(`/api/${apiVersion}/production_card`, prodcard.handler);

app.delete(`/api/${apiVersion}/production_card/delete`, prodcard.deleteHandler)
app.post(`/api/${apiVersion}/production_card/create`, prodcard.createHandler)
app.post(`/api/${apiVersion}/production_card/update`, prodcard.updateHandler)

app.post(`/api/${apiVersion}/users/create`, user.createHandler)

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
