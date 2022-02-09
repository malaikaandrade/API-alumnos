module.exports = (sequelize, dataTypes) => {
    let alias = 'Alumno';
    let cols = {
        matricula: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        nombres: {
            type: dataTypes.STRING(200)
        },
        apellidos: {
            type: dataTypes.STRING(455)
        },
        carrera: {
            type: dataTypes.STRING(455)
        }
    };

    let config = {
        tableName: 'alumno',
        timestamps: false
    };

    const Alumno = sequelize.define(alias, cols, config);

    // Alumno.associate = function(models){
    //     // un alumno tiene muchas materias
    //     Alumno.hasMany(models.Materia, {
    //         as: "id_matricula",
    //         foreignKey: "id_matricula"
    //     });
    // }

    return Alumno
}