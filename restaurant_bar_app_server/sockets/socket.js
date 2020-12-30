const { io } = require('../index');
const { comprobarJWT } = require('../helpers/jwt');
const { mesaDesocupada, mesaOcupada, grabarMensaje } = require('../controllers/socket');

// Mensajes de Sockets
io.on('connection', (client) => {

    //TODO: Verificar token
    const [valido, uid] = comprobarJWT(client.handshake.headers['x-token'])
    console.log('Valido?', valido);
    console.log('UID', uid)
    // Verificar autenticación
    if (!valido) { return client.disconnect(); }

    //----------Fin TODO


    console.log('Mesa ocupada')
    // Cliente autenticado
    mesaOcupada(uid);

    // Ingresar al usuario a una sala en particular
    // sala global, client.id, 5f298534ad4169714548b785
    //client.join(uid);

    // Escuchar del cliente el mensaje-personal
    client.on('mensaje-personal', async (payload) => {
        // TODO: Grabar mensaje
        await grabarMensaje(payload);
        io.to(payload.para).emit('mensaje-personal', payload);
    })


    client.on('disconnect', () => {
        mesaDesocupada(uid);
        console.log('Mesa desocupada')
    });




    // client.on('mensaje', ( payload ) => {
    //     console.log('Mensaje', payload);
    //     io.emit( 'mensaje', { admin: 'Nuevo mensaje' } );
    // });


});
