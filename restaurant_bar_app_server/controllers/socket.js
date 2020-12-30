const Mesa = require('../models/mesa');
const Mensaje = require('../models/mensaje');

const mesaOcupada = async ( uid = '' ) => {

    const mesa  = await Mesa.findById( uid );
    mesa.ocupada = true;
    await mesa.save();
    return mesa;
}

const mesaDesocupada = async ( uid = '' ) => {
    const mesa  = await Mesa.findById( uid );
    mesa.ocupada = false;
    await mesa.save();
    return mesa;
}

//TODO: Sustituir grabar mensaje por grabar Orden
const grabarMensaje = async( payload ) => {

    /*
        payload: {
            de: '',
            para: '',
            texto: ''
        }
    */

    try {
        const mensaje = new Mensaje( payload );
        await mensaje.save();

        return true;
    } catch (error) {
        return false;
    }

}



module.exports = {
    mesaOcupada,
    mesaDesocupada,
    grabarMensaje
}


