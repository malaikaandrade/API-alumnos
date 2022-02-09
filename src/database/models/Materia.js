module.exports = (sequelize, dataTypes) => {
    let alias = 'Materia';
    let cols = {
        id_materia: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        materia: {
            type: dataTypes.STRING(200)
        },
        promedio: {
            type: dataTypes.DECIMAL(20,0)
        },
        semestre: {
            type: dataTypes.STRING(45)
        },
        id_matricula:{
            type: dataTypes.INTEGER,

        }
    };

    let config = {
        tableName: 'materia',
        timestamps: false
    };

    const Materia = sequelize.define(alias, cols, config);

    // Materia.associate = function(models){
    //     // una materia pertenece a la matricula de un alumno
    //     Materia.belongsTo(models.Alumno, {
    //         as: "id_matricula",
    //         foreignKey: "id_matricula"
    //     });
    // }

    return Materia
}