const { Schema, model } = require('mongoose');
//const Producto = model('Producto');
const PedidoSchema = Schema({

    mesa: {
        type: Schema.Types.ObjectId, ref: "Mesa", autopopulate: true,
        required: true
    },
    productos: [{ type: Schema.Types.ObjectId, ref: "Producto", autopopulate: true }],
    fecha: { type: Date, default: Date.now },
    estado: { type: String, default: "Solicitado" }
});


PedidoSchema.method('toJSON', function () {
    const { __v, ...object } = this.toObject();
    return object;
})

PedidoSchema.plugin(require('mongoose-autopopulate'));


module.exports = model('Pedido', PedidoSchema);


//https://es.stackoverflow.com/questions/249344/relaciones-entre-collections-mongo

//https://es.stackoverflow.com/questions/248806/actualizar-atributos-dentro-de-un-subdocumento-array-de-otro-subdocumento-array

//https://es.stackoverflow.com/questions/234371/como-configuro-mongoose-para-que-me-guarde-en-zona-horaria-500