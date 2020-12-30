const { response } = require('express');
const bcrypt = require('bcryptjs');

const Mesa = require('../models/mesa');
const Mesero = require('../models/mesero')
const { generarJWT } = require('../helpers/jwt');


//TODO: Crear mesa

const crearMesa = async (req, res = response) => {
    const { email, password } = req.body;
    try {
        const existeEmail = await Mesa.findOne({ email });
        if (existeEmail) {
            return res.status(400).json({
                ok: false,
                msg: 'El correo ya está registrado'
            });
        }
        const mesa = new Mesa(req.body);

        // Encriptar contraseña
        const salt = bcrypt.genSaltSync();
        mesa.password = bcrypt.hashSync(password, salt);

        await mesa.save();

        // Generar mi JWT
        const token = await generarJWT(mesa.id);

        res.json({
            ok: true,
            mesa,
            token
        });


    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        });
    }
}

const login = async (req, res = response) => {


    const { mesa, mesero } = req.body;
    console.log('Mesa', mesa);
    console.log('Mesero', mesero);

    try {

        //Busca la mesa en la bd
        const mesaBD = await Mesa.findOne({ mesa });
        if (!mesaBD) {
            return res.status(404).json({
                ok: false,
                msg: 'Mesa no válida'
            });
        }

        //busca el mesero en la bd
        const meseroBD = await Mesero.findOne({ usuario: mesero });
        if (!meseroBD) {
            return res.status(404).json({
                ok: false,
                msg: 'Mesero no registrado'
            });
        }

        //Verifica si la mesa es de tipo admin y el usuario no lo es, no se permite acceder
        if (mesaBD.type == 'admin' && meseroBD.type != 'admin') {
            return res.status(404).json({
                ok: false,
                msg: 'No tienes privilegios para acceder como administrador'
            });
        } else {

            //Actuzaliza el mesero que esta atendiendo la mesa
            mesaBD.mesero_activo = meseroBD.mesero_id;
            await mesaBD.save();


            // Generar el JWT
            const token = await generarJWT(mesaBD.id);

            //Si todo es correcto, se devuelve la información
            res.json({
                ok: true,
                mesa: mesaBD,
                token
            });
        }




    } catch (error) {
        console.log(error);
        return res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        })
    }

}

//TODO: Renew Token
const renewToken = async (req, res = response) => {

    const uid = req.uid;

    // generar un nuevo JWT, generarJWT... uid...
    const token = await generarJWT(uid);

    // Obtener mesa por el UID, Mesa.findById... 
    const mesa = await Mesa.findById(uid);

    res.json({
        ok: true,
        mesa,
        token
    });

}


module.exports = {
    crearMesa,
    login,
    renewToken
}
