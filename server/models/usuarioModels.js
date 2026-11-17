// IMPORTANDO AS CONFIGURAÇÕES DO BANCO
const db = require("../config/db.js")

// EXPORTAR AS FUNÇÕES DO MODEL
module.exports = {
    //LOGIN
    login: () =>{
        console.log("TALOGADO");
    },
    //CRUD
    //CREATE
    criarUsuario: () =>{
        console.log("CRIEI UM USUÁRIO");
    },
    //READ
    listarUsuarios: () => {
        console.log("TOMA AI OS USUÁRIOS");
    },
    //UPDATE
    atualizarUsuario: () => {
        console.log("ATUALIZAR UM USUÁRIO");
    },
    //DELETE
    deletarUsuario: () => {
        console.log("APAGUEI UM USUÁRIO");
    }
}