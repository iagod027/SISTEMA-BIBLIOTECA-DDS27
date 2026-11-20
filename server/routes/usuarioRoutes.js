// IMPORTAÇÃO DO MÓDULO DO EXPRESS
const express = require("express")
const router = express.Router()

//IMPORTAR O CONTROLLER DO USUÁRIO
const usuarioControllers = require("../controllers/usuarioControllers.js")

// ROTAS DO USUÁRIOS
//LOGIN
router.get("/login", usuarioControllers.login)

// CRUD
// MOSTRA A PÁGINA DE CRIAR USUÁRIO
router.get("/cadastrar", (req,res) =>{
    res.render("usuarios/cadastrar");
})

// MANDAR AS INFORMAÇÕES DE CADASTRO PARA O CONTROLLER
router.post("/cadastrar", usuarioControllers.criar)

// MANDAR AS INFORMAÇÕES DE CADASTRO PARA O CONTROLLER
router.get("/editar", (req,res) =>{
    res.render("usuarios/editar");
})

router.get("/listar", usuarioControllers.listar)


router.get("/", usuarioControllers.listar)

//EXPORTAR O ROUTER
module.exports = router