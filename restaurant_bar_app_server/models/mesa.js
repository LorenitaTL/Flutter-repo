const { Schema, model } = require('mongoose');

const MesaSchema = Schema({

    mesa: {
        type: String,
        required: true
    },
    mesero: [{ type: Schema.Types.ObjectId, ref: "Mesero", autopopulate: true }],
    ocupada: {
        type: Boolean,
        default: false
    },
    type: {
        type: String,
        required: true
    }

});

MesaSchema.method('toJSON', function () {
    const { __v, ...object } = this.toObject();

    return object;
});

MesaSchema.plugin(require('mongoose-autopopulate'));



module.exports = model('Mesa', MesaSchema);