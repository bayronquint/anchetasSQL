const {response} = require('express')

const conexion = require('../database/config')


const getAnchetas = async (req, res = response) => {


    const ConsultaAncheta = conexion.query('SELECT * FROM anchetas',function(error,resultados,fields){
        if(error)
            throw error
        
            res.json({
                msg:'GET API CON MYSQL',
                resultados
            })
        
        
    })
}

const postAnchetas = async(req,res)=>{

    const {nombre, descripcion,insumo,precio,disponible} = req.body

    const agregar = conexion.query(`INSERT INTO anchetas (nombre,descripcion,insumo,precio,disponible) VALUES ('${nombre}','${descripcion}','${insumo}','${precio}','${disponible}')`,
    function(error,resultado){
        if (error) throw error
        res.json({
            msg:'Campo agregado',
            resultado
        })
    }
    )
}

const updateAnchetas = async(req,res)=>{

    const {nombre, newNombre,descripcion,insumo,precio,disponible} = req.body

    const actualizar = conexion.query(`UPDATE anchetas SET nombre = ('${newNombre}'), descripcion=('${descripcion}'), insumo=('${insumo}'), precio=('${precio}'), disponible=('${disponible}') WHERE nombre = ('${nombre}')`, 
    function(error,resultado){
        if (error) throw error
        res.json({
            msg:'Registro Actualizado',
            resultado
        })
    }
    )
}

const deleteAnchetas = async(req,res)=>{

    const {nombre} = req.query

    const eliminar = conexion.query(`DELETE FROM anchetas WHERE nombre = ('${nombre}')`, 
    function(error,resultado){
        if (error) throw error
        res.json({
            msg:'Registro Eliminado',
            resultado
        })
    }
    )
}





module.exports = {
    getAnchetas,
    postAnchetas,
    updateAnchetas,
    deleteAnchetas
}