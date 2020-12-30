const mongoose = require('mongoose');
const { Schema } = mongoose;

const schema = new Schema({

    nombre: {
        type: String,
        required: true
    },
    precio: {
        type: Number,
        required: true
    },
    descripcion: {
        type: String,
        required: true
    },
    disponible: {
        type: Boolean,
        required: true,
        //default: true
    },
});

const model = mongoose.model('Producto', schema);
module.exports = model



// const { Schema, model } = require('mongoose');

// const ProductoSchema = Schema({

//     nombre: {
//         type: String,
//         required: true
//     },
//     precio: {
//         type: Number,
//         required: true
//     },
//     descripcion: {
//         type: String,
//         required: true
//     },
//     disponible: {
//         type: Boolean,
//         required: true,
//         //default: true
//     },

// });

// ProductoSchema.method('toJSON', function () {
//     const { __v, ...object } = this.toObject();
//     return object;
// })


// module.exports = model('Producto', ProductoSchema);