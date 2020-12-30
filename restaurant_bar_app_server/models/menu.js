const { Schema, model } = require('mongoose');

const MenuSchema = Schema({

    nombre_categoria: {
        type: String,
        required: true
    },
    subcategorias: {
        nombre_subcategoria: {
            type: String,
            required: true
        },
        productos: [{ type: Schema.Types.ObjectId, ref: "Producto", autopopulate: true }],

    },
});



MenuSchema.method('toJSON', function () {
    const { __v, _id, ...object } = this.toObject();
    object.uid = _id;
    return object;
})

MenuSchema.plugin(require('mongoose-autopopulate'));


module.exports = model('Menu', MenuSchema);
