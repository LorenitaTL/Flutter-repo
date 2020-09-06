const { io } = require('../index')
const Bands = require('../models/bands');
const Band = require('../models/band');


const bands = new Bands();

bands.addBand(new Band('Queen'));
bands.addBand(new Band('Led Zepellin'));
bands.addBand(new Band('AC/DC'));
bands.addBand(new Band('Hombres G'));

console.log(bands);
//Mensajes de sockets
io.on('connection', client => {
    console.log('Cliente conectado');

    client.emit('active-bands', bands.getBands());

    client.on('disconnect', () => {
        console.log('Cliente desconectado');
    });

    client.on('mensaje', (payload) => {
        console.log('Mensaje ', payload);
        io.emit('mensaje', { admin: 'nuevo mensaje' });
    });

    client.on('vote-band', (payload) => {
        bands.voteBand(payload.id);
        io.emit('active-bands', bands.getBands());
    });

    client.on('add-band', (payload) => {
        console.log(payload.name);
        const newBand = new Band(payload.name)
        bands.addBand(newBand)
        io.emit('active-bands', bands.getBands());
    });

    client.on('delete-band', (payload) => {
        bands.deleteBand(payload.id);
        io.emit('active-bands', bands.getBands());
    });
    //client.on('emitir-mensaje', (payload) => {
    //console.log('nuevo-mensaje', payload)
    //io.emit('nuevo-mensaje', payload) //emite a todos
    //  client.broadcast.emit('emitir-mensaje', payload) //emite a todos menos al que lo emitió
    //})

});