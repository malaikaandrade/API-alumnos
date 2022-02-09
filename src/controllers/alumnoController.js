const db = require('../database/models');
const Alumno = require('../database/models/Alumno');
const sequelize = db.sequelize;


const alumnoController = {
    'list': (req, res) => {
        db.Alumno.findAll()
            .then(element => {
                console.log(element)
                return res.status(200).json({
                    data: element,
                    status: 200 
                })
            })
    },
    'store': (req, res) => {
        db.Alumno
            .create(req.body) 
            .then(element => {
                return res.status(200).json({
                    data: element,
                    status: 200,
                    created: 'ok'
                })
            })
    },


}

module.exports = alumnoController;