import { request, response } from 'express';
import express from 'express';
import knex from "./database/connection";
import Controller from './controllers/Controller';

const routes = express.Router();
const controller = new Controller();

routes.get('/clinicas/:table/:type', controller.getClinicas);
routes.get('/servicos', controller.getServicos);
routes.post('/createClinica', controller.createClinica);
// routes.get('/servicosByClinica/:id', controller.getServicosByClinica);

export default routes;