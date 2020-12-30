const { Schema, model } = require('mongoose');

const MeseroSchema = Schema({

    usuario: {
        type: String,
        required: true
    },

    nombre: {
        type: String,
        required: true
    },
    apellidos: {
        type: String,
        required: true
    },
    type: {
        type: String,
        required: true
    },

});

MeseroSchema.method('toJSON', function () {
    const { __v, ...object } = this.toObject();
    return object;
})



module.exports = model('Mesero', MeseroSchema);