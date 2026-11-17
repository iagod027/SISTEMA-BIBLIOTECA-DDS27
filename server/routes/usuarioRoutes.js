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
router.get("/cadastro", (req,res) =>{
    res.render("usuarios/cadastro");
})

router.get("/editar", (req,res) =>{
    res.render("usuarios/editar");
})

router.get("/listar", (req,res) =>{
    res.render("usuarios/listar");
})


router.get("/", (req,res) =>{
    res.send("MOSTRANDO A LISTA DE USUÁRIOS")
})

//EXPORTAR O ROUTER
module.exports = router